JadiUndangan.id v3 - Next.js + NextAuth + Gallery + Themes + Subscriptions

Quick start:
1. npm install
2. npm run dev
3. Open http://localhost:3000


## v4 — Vercel Blob upload
The gallery upload API now uploads files to **Vercel Blob** using the Vercel Blob REST API.


Setup:
1. In Vercel dashboard, create a Blob Read/Write token and set it as `BLOB_READ_WRITE_TOKEN` in your Project Environment Variables.

2. Test upload locally (after running the app) using the Admin gallery page or using curl:

```bash
curl -X POST http://localhost:3000/api/gallery/upload -H "Authorization: Bearer <not-required-for-local>" -F "file=@/path/to/photo.jpg" -F "invitation_id=0"
```

Notes:
- The upload code uses the REST endpoint `PUT https://api.vercel.com/v1/blob?name=<name>` and expects Vercel to return a JSON object containing `url` for the stored blob. If your Vercel Blob setup returns a different shape, update `app/api/gallery/upload/route.js` accordingly.
- Make sure `BLOB_READ_WRITE_TOKEN` is set in Vercel for production.


## v5 — Turso integration
This v5 release replaces the local SQLite DB with Turso. Steps to use:

1. Import schema (db_turso.sql) to Turso and then import seed:

   turso db create jadiundangan
   turso db import jadiundangan db_turso.sql
   turso db import jadiundangan db_seed.sql

2. Create an Auth Token for the DB and set env vars in Vercel:
   - TURSO_DB_URL
   - TURSO_DB_AUTH_TOKEN
   - NEXTAUTH_SECRET
   - BLOB_READ_WRITE_TOKEN (for Vercel Blob uploads)

3. Deploy to Vercel. NextAuth and API routes will use Turso for all data.

Notes:
- The db wrapper in lib/db.js attempts to mimic sqlite3's callback API for compatibility with existing code. If you prefer a fully async approach, replace usages with getClient() from lib/db.js and call client.execute(...) directly.
- If you run into issues with the Turso client API version, adjust lib/db.js accordingly (createClient signature or execute method name may differ).
