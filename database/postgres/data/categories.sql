create table data.categories
(
    id       serial
        primary key,
    category text
);

alter table data.categories
    owner to postgres;

