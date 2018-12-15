#!/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA shared_extensions;
   CREATE EXTENSION IF NOT EXISTS "pgcrypto" SCHEMA shared_extensions;
   CREATE EXTENSION IF NOT EXISTS "hstore" SCHEMA shared_extensions;
   CREATE EXTENSION IF NOT EXISTS "plpgsql" SCHEMA shared_extensions;
EOSQL