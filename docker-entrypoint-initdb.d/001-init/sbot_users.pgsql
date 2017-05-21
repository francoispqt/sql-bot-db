CREATE table if not exists sbot_client.sbot_users
(
    id serial primary key,
    firstname text not null,
    lastname text not null,
    email text not null,
    constraint uk_sbot_email unique (email)
) WITH (OIDS=FALSE);

INSERT INTO sbot_client.sbot_users (firstname, lastname, email) VALUES ('John', 'Doe', 'johndoe@mailinator.com');
