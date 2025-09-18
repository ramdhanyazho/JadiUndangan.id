import { NextResponse } from 'next/server';
const { getDb } = require('../../../../lib/db');
export async function GET(req, { params }){
  const slug = params.slug;
  const db = getDb();
  return new Promise((resolve)=>{
    db.get('SELECT * FROM invitations WHERE slug = ?', [slug], (err,row)=>{
      if(err) return resolve(new NextResponse(JSON.stringify({error:err.message}),{status:500}));
      if(!row) return resolve(new NextResponse(JSON.stringify({error:'Not found'}),{status:404}));
      db.all('SELECT * FROM events WHERE invitation_id = ?', [row.id], (eerr, events)=>{
        if(eerr) events = [];
        db.all('SELECT * FROM gallery WHERE invitation_id = ?', [row.id], (gerr, gallery)=>{
          db.all('SELECT * FROM comments WHERE invitation_id = ? ORDER BY id DESC', [row.id], (cerr, comments)=>{
            row.events = events || []; row.gallery = gallery || []; row.comments = comments || [];
            resolve(new NextResponse(JSON.stringify(row), { status:200 }));
          });
        });
      });
    });
  });
}
