set timezone='Europe/Paris';

create user sbot_admin with password '%PASSWORD%';

CREATE DATABASE sbot encoding 'utf8' owner sbot_admin;

GRANT ALL PRIVILEGES ON DATABASE sbot TO sbot_admin;
