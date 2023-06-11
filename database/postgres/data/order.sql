create table "order"
(
    id              serial
        primary key,
    user_id         integer not null
        unique
        constraint user_id_fk
            references "user"
            on update cascade on delete restrict,
    product_id      integer not null
        unique
        constraint product_id_fk
            references product
            on update cascade on delete restrict,
    pieces          integer not null,
    address_id      integer not null
        unique
        constraint address_id_fk
            references address
            on update cascade on delete restrict,
    amount          money   not null,
    payment_type_id integer not null
        unique
        constraint payment_type_id_fk
            references payments
            on update cascade on delete restrict
);

alter table "order"
    owner to postgres;

