-- 1. Create the dedicated user
CREATE USER boilpoint_user WITH ENCRYPTED PASSWORD '123456';

-- 2. Create the database owned by that user
CREATE DATABASE boilpoint_dev OWNER boilpoint_user;

-- 3. Connect to the new database and create a schema
\c boilpoint_dev
CREATE SCHEMA app_core AUTHORIZATION boilpoint_user;

-- 4. Set the search path so the user finds the schema automatically
ALTER USER boilpoint_user SET search_path TO app_core, public;
GRANT ALL PRIVILEGES ON SCHEMA app_core TO boilpoint_user;