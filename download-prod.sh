#!/usr/bin/env bash

# initialize environment variables 
# source: http://stackoverflow.com/a/30969768
set -o allexport
source .env
set +o allexport

mysqldump --compress --verbose \
  -u $DB_USER -p$DB_PASSWORD \
  --host $DB_HOST \
  $DB_NAME > db-dump/dump.sql
