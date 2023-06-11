create table data.brand
(
    id    serial
        primary key,
    brand text
);

alter table data.brand
    owner to postgres;

