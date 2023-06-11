create table "user"
(
    id                          serial
        primary key,
    name                        text        not null,
    surname                     text,
    email                       text,
    phone                       varchar(15) not null,
    preferred_payment_method_id integer     not null
        unique
        constraint payment_method_fk
            references payments
            on update cascade on delete restrict
);

alter table "user"
    owner to postgres;

