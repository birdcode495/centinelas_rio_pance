CREATE EXTENSION postgis;

-- 1. Create a dedicated schema for the project
CREATE SCHEMA centinelas;

-- 2. Explicitly grant the postgres user all privileges on the new schema
GRANT ALL PRIVILEGES ON SCHEMA centinelas TO postgres;

-- 3. Ensure postgres can read and edit any TABLE created now or in the future inside this schema
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA centinelas TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA centinelas GRANT ALL PRIVILEGES ON TABLES TO postgres;

-- 4. Ensure postgres can manage database SEQUENCES (used for auto-incrementing IDs/PKs)
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA centinelas TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA centinelas GRANT ALL PRIVILEGES ON SEQUENCES TO postgres;
