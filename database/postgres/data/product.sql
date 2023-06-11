create table product
(
    id             serial
        primary key,
    name           text    not null,
    brand_id       integer not null
        unique
        constraint brand_id_fk
            references brand
            on update cascade on delete restrict,
    size_id        integer not null
        unique
        constraint size_id_fk
            references size
            on update cascade on delete restrict,
    gender_id      integer not null
        unique
        constraint gender_id_fk
            references gender
            on update cascade on delete restrict,
    price          money   not null,
    quantity       integer not null,
    subcategory_id integer not null
        unique
        constraint subcategory_id_fk
            references subcategories
            on update cascade on delete restrict
);

alter table product
    owner to postgres;

