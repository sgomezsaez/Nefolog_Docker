#!/bin/bash

set -e

HOST=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
POSTGRES_USER=postgres
POSTGRES_PSSW=123456789

export POSTGRES_USER
export POSTGRES_PSSW

echo "Provision Nefolog..."

echo "Provisioning PostgresDB in localhost..."

chmod 777 apt.postgresql.org.sh
sudo ./apt.postgresql.org.sh
sudo apt-get install postgresql-9.3 postgresql-client-9.3 pgadmin3

sudo service postgresql start

sudo docker-compose up -d

echo "Done Provisioning Nefolog Module. Accessible in $HOST:8080"

