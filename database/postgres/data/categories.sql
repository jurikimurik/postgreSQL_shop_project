create table categories
(
    id       serial
        primary key,
    category text
);

alter table categories
    owner to postgres;

