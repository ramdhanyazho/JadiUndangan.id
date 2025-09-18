import { NextResponse } from 'next/server';
const { getDb } = require('../../../lib/db');
export async function GET(){ const db=getDb(); return new Promise((res)=> db.all('SELECT * FROM gallery ORDER BY id DESC',[],(e,rows)=> res(new NextResponse(JSON.stringify(rows))))); }
