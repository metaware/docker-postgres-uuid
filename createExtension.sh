#!/bin/bash

gosu postgres postgres --single <<- EOSQL
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
   CREATE EXTENSION IF NOT EXISTS "pgcrypto";
   CREATE EXTENSION IF NOT EXISTS "hstore";
   CREATE EXTENSION IF NOT EXISTS "plpgsql";
EOSQL
