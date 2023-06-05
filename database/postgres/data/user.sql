create table "user"
(
    id                          serial
        primary key,
    name                        text        not null,
    surname                     text,
    email                       text,
    phone                       varchar(15) not null,
    preferred_payment_method_id integer     not null
);

alter table "user"
    owner to postgres;

