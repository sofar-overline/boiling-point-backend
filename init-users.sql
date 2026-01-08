-- 1. Create the dedicated user
CREATE USER boiling_point_user WITH ENCRYPTED PASSWORD '123456';

-- 2. Create the database owned by that user
CREATE DATABASE boiling_point_dev OWNER boiling_point_user;

-- 3. Connect to the new database and create a schema
\c boiling_point_dev
CREATE SCHEMA app_core AUTHORIZATION boiling_point_user;

-- 4. Set the search path so the user finds the schema automatically
ALTER USER boiling_point_user SET search_path TO app_core, public;
GRANT ALL PRIVILEGES ON SCHEMA app_core TO boiling_point_user;