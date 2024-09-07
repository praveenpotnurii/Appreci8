-- 000001_init_schema.down.sql

-- Drop foreign key constraints
ALTER TABLE "verify_emails" DROP CONSTRAINT IF EXISTS "verify_emails_username_fkey";
ALTER TABLE "accounts" DROP CONSTRAINT IF EXISTS "accounts_owner_fkey";
ALTER TABLE "entries" DROP CONSTRAINT IF EXISTS "entries_account_id_fkey";
ALTER TABLE "transfers" DROP CONSTRAINT IF EXISTS "transfers_from_account_id_fkey";
ALTER TABLE "transfers" DROP CONSTRAINT IF EXISTS "transfers_to_account_id_fkey";
ALTER TABLE "sessions" DROP CONSTRAINT IF EXISTS "sessions_username_fkey";

-- Drop tables
DROP TABLE IF EXISTS "sessions";
DROP TABLE IF EXISTS "transfers";
DROP TABLE IF EXISTS "entries";
DROP TABLE IF EXISTS "accounts";
DROP TABLE IF EXISTS "verify_emails";
DROP TABLE IF EXISTS "users";

-- Note: Indexes will be automatically dropped when the tables are dropped