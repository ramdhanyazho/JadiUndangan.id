import { NextResponse } from 'next/server';
import { getToken } from 'next-auth/jwt';

export async function GET(req) {
  const token = await getToken({ req, secret: process.env.NEXTAUTH_SECRET || 'devsecret' });
  if (!token) {
    return new NextResponse(JSON.stringify({}), { status: 200 });
  }

  // Sesuaikan isi token
  const user = {
    id: token.id,
    email: token.email,
    role: token.role || 'user',
  };

  return new NextResponse(JSON.stringify(user), { status: 200 });
}
