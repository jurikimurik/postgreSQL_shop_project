create table "order"
(
    id              serial
        primary key,
    user_id         integer not null,
    product_id      integer not null,
    pieces          integer not null,
    address_id      integer not null,
    amount          money   not null,
    payment_type_id integer not null
);

alter table "order"
    owner to postgres;

