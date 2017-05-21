FROM    postgres:9.5

ENV 	TZ=Europe/Paris

ADD     docker-entrypoint-initdb.d docker-entrypoint-initdb.d
RUN     chmod 755 docker-entrypoint-initdb.d/*.sh
