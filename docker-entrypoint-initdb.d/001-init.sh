#!/bin/bash

if [ -z ${SCRIPTPATH+x} ];
then
  SCRIPTPATH=`dirname $0`
fi

## Database
cat ${SCRIPTPATH}/001-init/init.pgsql | sed "s/%PASSWORD%/${DB_PASSWORD}/g" | bash -c "${PSQL_ADMIN}"

bash -c "${PSQL} < ${SCRIPTPATH}/001-init/schema.pgsql"

## Schema
bash -c "${PSQL} < ${SCRIPTPATH}/001-init/sbot_users.pgsql"
