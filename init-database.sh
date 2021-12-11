#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE DATABASE web_development;
EOSQL

# psql -U postgres -d web_development -f /web_development.sql

