import { NextResponse } from 'next/server';
const bcrypt = require('bcrypt');
const { getDb } = require('../../../../lib/db');
export async function POST(req){
  const body = await req.json();
  const email = body.email || 'admin@example.com';
  const password = body.password || 'password';
  const hash = await bcrypt.hash(password, 10);
  const db = getDb();
  return new Promise((resolve)=> db.run('INSERT OR IGNORE INTO users (email,password_hash,role,trial_ends_at) VALUES (?,?,?,datetime(\'now\', \'+7 days\'))',[email,hash,'admin'], function(err){ if(err) resolve(new NextResponse(JSON.stringify({error:err.message}),{status:500})); else resolve(new NextResponse(JSON.stringify({ok:true}),{status:201})); })); 
}
