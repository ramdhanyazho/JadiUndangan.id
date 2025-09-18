import { NextResponse } from "next/server";
import { put } from "@vercel/blob";
import formidable from "formidable";
import fs from "fs";
import { getDb } from "@/lib/db";

export const config = {
  api: {
    bodyParser: false, // disable Next.js body parser
  },
  runtime: "nodejs", // force Node runtime (not Edge)
};

export async function POST(req) {
  const form = formidable({ multiples: false });

  return new Promise((resolve) => {
    form.parse(req, async (err, fields, files) => {
      if (err) {
        return resolve(
          NextResponse.json({ error: err.message }, { status: 500 })
        );
      }

      const file = files.file;
      if (!file) {
        return resolve(
          NextResponse.json({ error: "No file uploaded" }, { status: 400 })
        );
      }

      try {
        // Read file
        const buffer = fs.readFileSync(file.filepath);
        const ext = (file.originalFilename || "").split(".").pop();
        const name = `gallery/${Date.now()}-${Math.random()
          .toString(36)
          .slice(2)}.${ext}`;

        // Upload ke Vercel Blob
        const blob = await put(name, buffer, {
          access: "public",
          token: process.env.BLOB_READ_WRITE_TOKEN,
          contentType: file.mimetype || "application/octet-stream",
        });

        // Save ke Turso DB
        const db = getDb();
        db.run(
          "INSERT INTO gallery (invitation_id, url, media_type) VALUES (?,?,?)",
          [fields.invitation_id || 0, blob.url, file.mimetype || ""],
          function (err) {
            if (err) {
              return resolve(
                NextResponse.json({ error: err.message }, { status: 500 })
              );
            }
            db.all("SELECT * FROM gallery ORDER BY id DESC", [], (e, rows) =>
              resolve(NextResponse.json(rows, { status: 200 }))
            );
          }
        );
      } catch (e) {
        return resolve(
          NextResponse.json({ error: e.message }, { status: 500 })
        );
      }
    });
  });
}
