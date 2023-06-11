create table data.payments
(
    id             serial
        primary key,
    payment_method text
);

alter table data.payments
    owner to postgres;

