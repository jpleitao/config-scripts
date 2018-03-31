#!/bin/sh

# Stop PostgreSQL database
# Argument is PostgreSQL version number. Example: ./stop_postgresq.sh 9.6
#
sudo pg_ctlcluster $1 main stop
