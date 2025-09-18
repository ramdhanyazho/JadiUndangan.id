/**
 * Turso DB wrapper (sqlite3-style) for Next.js + Vercel
 * Requires env: TURSO_DATABASE_URL, TURSO_AUTH_TOKEN
 */

const { createClient } = require("@turso/database");

let _client = null;

function getClient() {
  if (_client) return _client;
  const url = process.env.TURSO_DATABASE_URL;
  const authToken = process.env.TURSO_AUTH_TOKEN;
  if (!url || !authToken) {
    throw new Error("TURSO_DATABASE_URL and TURSO_AUTH_TOKEN must be set in env");
  }
  _client = createClient({ url, authToken });
  return _client;
}

async function execQuery(sql, params = []) {
  const client = getClient();
  const res = await client.execute({ sql, args: params });
  return res.rows?.toArray ? res.rows.toArray() : res.rows || [];
}

function getDb() {
  return {
    all(sql, params, cb) {
      if (typeof params === "function") { cb = params; params = []; }
      execQuery(sql, params).then(rows => cb(null, rows)).catch(err => cb(err));
    },
    get(sql, params, cb) {
      if (typeof params === "function") { cb = params; params = []; }
      execQuery(sql, params)
        .then(rows => cb(null, rows.length ? rows[0] : undefined))
        .catch(err => cb(err));
    },
    run(sql, params, cb) {
      if (typeof params === "function") { cb = params; params = []; }
      execQuery(sql, params).then(async () => {
        try {
          const rows = await execQuery("SELECT last_insert_rowid() as id");
          const lastID = rows?.[0]?.id || null;
          if (cb) cb.call({ lastID }, null);
        } catch (e) {
          if (cb) cb(e);
        }
      }).catch(err => cb && cb(err));
    },
    prepare() {
      return {
        run() {},
        finalize(cb) { if (cb) cb(); }
      };
    }
  };
}

module.exports = { getDb, getClient };
