create table brand
(
    id    serial
        primary key,
    brand text
);

alter table brand
    owner to postgres;

