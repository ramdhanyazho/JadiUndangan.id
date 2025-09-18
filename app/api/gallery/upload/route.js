import { NextResponse } from 'next/server';
import formidable from 'formidable';
import fs from 'fs';
const { getDb } = require('../../../../lib/db');

// Uploads file to Vercel Blob using the Vercel Blob REST API.
// Requires env var BLOB_READ_WRITE_TOKEN (create in Vercel dashboard for Blob).
export async function POST(req) {
  const form = formidable({ multiples: false });
  return new Promise((resolve) => {
    form.parse(req, async (err, fields, files) => {
      if (err) return resolve(new NextResponse(JSON.stringify({ error: err.message }), { status: 500 }));
      const file = files.file;
      if (!file) return resolve(new NextResponse(JSON.stringify({ error: 'no file' }), { status: 400 }));
      try {
        const buffer = fs.readFileSync(file.filepath);
        const ext = (file.originalFilename || '').split('.').pop();
        const name = `gallery/${Date.now()}-${Math.random().toString(36).slice(2)}.${ext}`;

        // Vercel Blob REST endpoint
        const url = `https://api.vercel.com/v1/blob?name=${encodeURIComponent(name)}`;
        const token = process.env.BLOB_READ_WRITE_TOKEN || '';
        if (!token) return resolve(new NextResponse(JSON.stringify({ error: 'BLOB_READ_WRITE_TOKEN not set' }), { status: 500 }));

        // Upload raw bytes with proper content-type header
        const res = await fetch(url, {
          method: 'PUT',
          headers: {
            'Authorization': `Bearer ${token}`,
            'Content-Type': file.mimetype || 'application/octet-stream',
            'Content-Length': buffer.length.toString()
          },
          body: buffer
        });

        if (!res.ok) {
          const text = await res.text();
          return resolve(new NextResponse(JSON.stringify({ error: 'Upload failed', detail: text }), { status: 500 }));
        }

        // Vercel returns JSON with "url" field for the blob
        const body = await res.json().catch(()=>({}));
        const blobUrl = body?.url || (`https://vercel.com/storage/v1/object/public/${name}`);

        // Save to DB
        const db = getDb();
        db.run('INSERT INTO gallery (invitation_id, url, media_type) VALUES (?,?,?)', [fields.invitation_id||0, blobUrl, file.mimetype||''], function(err){
          if (err) return resolve(new NextResponse(JSON.stringify({ error: err.message }), { status:500 }));
          db.all('SELECT * FROM gallery ORDER BY id DESC', [], (e, rows) => resolve(new NextResponse(JSON.stringify(rows), { status: 200 })));
        });
      } catch (e) {
        return resolve(new NextResponse(JSON.stringify({ error: e.message }), { status: 500 }));
      }
    });
  });
}
