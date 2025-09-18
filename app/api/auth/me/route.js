import { NextResponse } from 'next/server';
import { getToken } from 'next-auth/jwt';
const { getDb } = require('../../../../lib/db');
export async function GET(req){
  const token = await getToken({ req, secret: process.env.NEXTAUTH_SECRET || 'devsecret' });
  if(!token) return new NextResponse(JSON.stringify({}),{status:200});
  return new NextResponse(JSON.stringify(token.user),{status:200});
}
