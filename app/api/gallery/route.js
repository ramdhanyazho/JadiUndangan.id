// app/api/gallery/route.js

import { NextResponse } from 'next/server';
import { getDb } from '@/lib/db';

export async function GET() {
  const db = getDb();

  try {
    const rows = await new Promise((resolve, reject) => {
      db.all('SELECT * FROM gallery ORDER BY id DESC', [], (err, result) => {
        if (err) reject(err);
        else resolve(result);
      });
    });

    return NextResponse.json(rows);
  } catch (err) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
