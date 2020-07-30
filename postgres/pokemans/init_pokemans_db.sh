#!/bin/bash
echo "*** CREATING DATABASE ***"

psql -v ON_ERROR_STOP=1 <<-EOSQL
  CREATE DATABASE pokemans;
  GRANT ALL PRIVILEGES ON DATABASE pokemans TO postgres;
  CREATE USER pokeadmin with encrypted password 'poke123';
  GRANT ALL PRIVILEGES ON DATABASE pokemans to pokeadmin;
  CREATE SCHEMA pokemans;
  GRANT ALL PRIVILEGES ON SCHEMA pokemans TO postgres;
  GRANT ALL PRIVILEGES ON SCHEMA pokemans TO pokeadmin;

EOSQL

psql pokemans < /tmp/psql_data/pokemans.sql