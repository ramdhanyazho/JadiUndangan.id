/**
 * Turso compatibility wrapper for existing sqlite3-style usage.
 * Exports getDb() which returns an object with methods: all(sql, params, cb), get(sql, params, cb), run(sql, params, cb)
 * Uses @turso/client under the hood. Requires env vars TURSO_DB_URL and TURSO_DB_AUTH_TOKEN.
 *
 * NOTE: This wrapper attempts to mimic sqlite3 callback signatures to avoid changing existing API files.
 * If you prefer a direct async client usage, replace usage with the @turso/client API directly.
 */

const { createClient } = require('@turso/client');

let _client = null;
function getClient() {
  if (_client) return _client;
  const url = process.env.TURSO_DB_URL || '';
  const authToken = process.env.TURSO_DB_AUTH_TOKEN || '';
  if (!url || !authToken) {
    throw new Error('TURSO_DB_URL and TURSO_DB_AUTH_TOKEN must be set in environment for Turso');
  }
  _client = createClient({ url, authToken });
  return _client;
}

// Helper to run a query and return rows
async function execQuery(sql, params) {
  const client = getClient();
  // Turso client's execute returns an object with 'rows' array in many SDKs
  // We'll call execute(sql, { args: params }) if params provided as array.
  if (!params) params = [];
  const res = await client.execute(sql, params);
  // normalize rows
  const rows = res?.rows || res?.results || [];
  return rows;
}

function getDb() {
  return {
    all(sql, params, cb) {
      // params optional
      if (typeof params === 'function') { cb = params; params = []; }
      execQuery(sql, params).then(rows => cb(null, rows)).catch(err => cb(err));
    },
    get(sql, params, cb) {
      if (typeof params === 'function') { cb = params; params = []; }
      execQuery(sql, params).then(rows => cb(null, (rows && rows.length ? rows[0] : undefined))).catch(err => cb(err));
    },
    run(sql, params, cb) {
      if (typeof params === 'function') { cb = params; params = []; }
      // For INSERT statements, run the SQL, then fetch last_insert_rowid()
      execQuery(sql, params).then(async () => {
        try {
          const rows = await execQuery('SELECT last_insert_rowid() as id', []);
          const lastID = rows && rows[0] && (rows[0].id || rows[0].last_insert_rowid() || rows[0].last_insert_rowid) ? (rows[0].id || rows[0].last_insert_rowid() || rows[0].last_insert_rowid) : null;
          // mimic sqlite3 'this.lastID' by returning an object with lastID
          // callback signature: function(err) { ... } in many code paths, but previous code expects to use 'this.lastID' inside function context.
          // We'll call cb with a fake 'this' by binding an object with lastID.
          if (cb) cb.call({ lastID }, null);
        } catch (e) {
          if (cb) cb(e);
        }
      }).catch(err => { if (cb) cb(err); });
    },
    prepare() {
      // minimal stub for prepare used in some places; return object with run and finalize
      return {
        run(...args) { /* no-op */ },
        finalize(cb) { if (cb) cb(); }
      };
    }
  };
}

module.exports = { getDb, getClient };
