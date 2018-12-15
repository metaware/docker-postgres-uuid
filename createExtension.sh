#!/bin/bash

# CREATE SCHEMA IF NOT EXISTS shared_extensions;
# GRANT USAGE ON SCHEMA shared_extensions TO public;
# GRANT EXECUTE ON ALL functions IN SCHEMA shared_extensions TO public;
# ALTER DEFAULT PRIVILEGES IN SCHEMA shared_extensions GRANT EXECUTE ON functions TO public;
# ALTER DEFAULT PRIVILEGES IN SCHEMA shared_extensions GRANT USAGE ON types TO public;

# CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA shared_extensions;
# CREATE EXTENSION IF NOT EXISTS "pgcrypto" SCHEMA shared_extensions;
# CREATE EXTENSION IF NOT EXISTS "hstore" SCHEMA shared_extensions;
# CREATE EXTENSION IF NOT EXISTS "plpgsql" SCHEMA shared_extensions;

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
   CREATE SCHEMA IF NOT EXISTS shared_extensions;
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
   CREATE EXTENSION IF NOT EXISTS "pgcrypto";
   CREATE EXTENSION IF NOT EXISTS "hstore";
   CREATE EXTENSION IF NOT EXISTS "plpgsql";
EOSQL