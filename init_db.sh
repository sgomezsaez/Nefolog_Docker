#!/bin/bash
set -e

sudo -u postgres psql --username $POSTGRES_USER -d postgres -c "alter user postgres with password '$POSTGRES_PSSW'";

psql -f ./Postgres/databases/createUser.sql --username "$POSTGRES_USER"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE DATABASE PGCloudmigration;
    	GRANT ALL PRIVILEGES ON DATABASE PGCloudmigration TO $POSTGRES_USER;
EOSQL

echo "Creating all required databases for Nefolog"
psql -f /Postgres/databases/CreatePGCloudmigration.sql --username "$POSTGRES_USER"
psql -f /Postgres/databases/PGCloudmigrationDBv2.sql --username "$POSTGRES_USER" -d PGCloudmigration
