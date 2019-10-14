#!/bin/bash
set -eu
psql -p 5432 -U ${POSTGRES_USER} -d ${POSTGRES_DB} -f ${IMPORT_FROM_DIR}/test2db.sql
