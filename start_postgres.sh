#!/bin/sh

# Start PostgreSQL database
# Argument is PostgreSQL version number. Example: ./start_postgresq.sh 9.6
#
sudo pg_ctlcluster $1 main start
