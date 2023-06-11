create table data.product
(
    id             serial
        primary key,
    name           text    not null,
    brand_id       integer not null
        unique
        constraint brand_id_fk
            references data.brand
            on update cascade on delete restrict,
    size_id        integer not null
        unique
        constraint size_id_fk
            references data.size
            on update cascade on delete restrict,
    gender_id      integer not null
        unique
        constraint gender_id_fk
            references data.gender
            on update cascade on delete restrict,
    price          money   not null,
    quantity       integer not null,
    subcategory_id integer not null
        unique
        constraint subcategory_id_fk
            references data.subcategories
            on update cascade on delete restrict
);

alter table data.product
    owner to postgres;

