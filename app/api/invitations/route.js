import { NextResponse } from "next/server";
import { getDb } from "@/lib/db";

// slugify helper
function slugify(str) {
  return str
    .toString()
    .normalize("NFD") // hapus accent
    .replace(/[\u0300-\u036f]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .substring(0, 50);
}

export async function GET() {
  const db = getDb();
  return new Promise((resolve) => {
    db.all(
      "SELECT * FROM invitations ORDER BY id DESC LIMIT 200",
      [],
      (err, rows) => {
        if (err)
          resolve(
            NextResponse.json({ error: err.message }, { status: 500 })
          );
        else resolve(NextResponse.json(rows, { status: 200 }));
      }
    );
  });
}

export async function POST(req) {
  try {
    const body = await req.json();
    const { nama_pria, nama_wanita, tanggal, tempat, alamat, theme_id } = body;

    const db = getDb();
    const base = (nama_pria || "") + " " + (nama_wanita || "");
    const s = slugify(base) + "-" + Date.now().toString().slice(-4);

    return new Promise((resolve) => {
      db.run(
        `INSERT INTO invitations (nama_pria, nama_wanita, tanggal, tempat, alamat, slug, theme_id) VALUES (?,?,?,?,?,?,?)`,
        [
          nama_pria || "",
          nama_wanita || "",
          tanggal || "",
          tempat || "",
          alamat || "",
          s,
          theme_id || null,
        ],
        function (err) {
          if (err) {
            resolve(
              NextResponse.json({ error: err.message }, { status: 500 })
            );
          } else {
            resolve(
              NextResponse.json({ id: this.lastID, slug: s }, { status: 201 })
            );
          }
        }
      );
    });
  } catch (e) {
    return NextResponse.json({ error: e.message }, { status: 400 });
  }
}
