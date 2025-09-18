import { NextResponse } from 'next/server';
const { getDb } = require('../../../../lib/db');
export async function GET(req,{params}){ const slug = params.slug; const db = getDb(); return new Promise((resolve)=>{ db.get('SELECT id FROM invitations WHERE slug=?',[slug],(er,row)=>{ if(!row) return resolve(new NextResponse(JSON.stringify([]))); db.all('SELECT * FROM comments WHERE invitation_id=? ORDER BY id DESC',[row.id],(e,rows)=> resolve(new NextResponse(JSON.stringify(rows)))); }); }); }
