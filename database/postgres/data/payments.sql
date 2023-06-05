create table payments
(
    id             serial
        primary key,
    payment_method text
);

alter table payments
    owner to postgres;

