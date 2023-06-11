create table data.size
(
    id   serial
        primary key,
    size integer
);

alter table data.size
    owner to postgres;

