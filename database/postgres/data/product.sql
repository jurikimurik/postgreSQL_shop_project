create table product
(
    id             serial
        primary key,
    name           text    not null,
    brand_id       integer not null,
    size_id        integer not null,
    gender_id      integer not null,
    price          money   not null,
    quantity       integer not null,
    subcategory_id integer not null
);

alter table product
    owner to postgres;

