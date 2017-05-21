# where to find scripts
export SCRIPTPATH=/docker-entrypoint-initdb.d

# define connections variables
export PSQL_ADMIN="psql --username postgres"
export PSQL="psql --username sbot_admin --dbname sbot"
