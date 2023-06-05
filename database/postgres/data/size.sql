create table size
(
    id   serial
        primary key,
    size integer
);

alter table size
    owner to postgres;

