import NextAuth from 'next-auth';
import CredentialsProvider from 'next-auth/providers/credentials';
const { getDb } = require('../../../../../lib/db');
import bcrypt from 'bcrypt';

const options = {
  providers: [
    CredentialsProvider({
      id: 'credentials',
      name: 'Credentials',
      credentials: { email: { label: 'Email', type: 'text' }, password: { label: 'Password', type: 'password' } },
      async authorize(credentials, req) {
        const db = getDb();
        return new Promise((resolve, reject) => {
          db.get('SELECT * FROM users WHERE email = ?', [credentials.email], async (err, user) => {
            if (err || !user) return resolve(null);
            const match = await bcrypt.compare(credentials.password, user.password_hash);
            if (!match) return resolve(null);
            resolve({ id: user.id, email: user.email, role: user.role });
          });
        });
      }
    })
  ],
  session: { strategy: 'jwt' },
  callbacks: {
    async jwt({ token, user }){ if(user) token.user = user; return token; },
    async session({ session, token }){ session.user = token.user; return session; }
  },
  secret: process.env.NEXTAUTH_SECRET || 'devsecret'
};

const handler = NextAuth(options);
export { handler as GET, handler as POST };
