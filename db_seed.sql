-- Seed SQL for Turso (db_seed.sql)
BEGIN TRANSACTION;
-- admin user (password: password) bcrypt hash
INSERT OR IGNORE INTO users (email, password_hash, role, trial_ends_at, created_at)
VALUES ('admin@example.com', '$2b$10$X4zUGkV2tWcYt5B9qF.0ceQw6fZzL8P3eQTY1sriP9/0fQwT2DpOa', 'admin', datetime('now', '+7 days'), datetime('now'));

-- sample theme
INSERT OR IGNORE INTO themes (name, json, created_at)
VALUES ('Classic', '{"colors":{"primary":"#b388eb","accent":"#ffd54f"}}', datetime('now'));

-- sample invitation
INSERT OR IGNORE INTO invitations (id_user, nama_pria, nama_wanita, tanggal, tempat, alamat, slug, theme_id, created_at)
VALUES (1, 'Budi', 'Sari', '2025-10-10', 'Gedung A', 'Jl. Contoh No.1', 'budi-sari-1000', 1, datetime('now'));

-- sample gallery (no actual blob URL)
INSERT OR IGNORE INTO gallery (invitation_id, url, media_type, created_at)
VALUES (1, '', 'image/jpeg', datetime('now'));

COMMIT;
