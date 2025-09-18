import { NextResponse } from 'next/server';
const { getDb } = require('../../../lib/db');
export async function GET(){ const db = getDb(); return new Promise((res)=> db.all('SELECT * FROM themes ORDER BY id DESC',[],(e,rows)=> res(new NextResponse(JSON.stringify(rows))))); }
export async function POST(req){ const body = await req.json(); const { name, json } = body; const db = getDb(); return new Promise((resolve)=> db.run('INSERT INTO themes (name,json) VALUES (?,?)',[name,json],function(err){ if(err) resolve(new NextResponse(JSON.stringify({error:err.message}),{status:500})); else db.all('SELECT * FROM themes',[],(e,rows)=> resolve(new NextResponse(JSON.stringify(rows)))); })); }
