create table subcategories
(
    id          serial
        primary key,
    subcategory text,
    category_id integer not null
        unique
        constraint category_id_fk
            references categories
            on update cascade on delete restrict
);

alter table subcategories
    owner to postgres;

