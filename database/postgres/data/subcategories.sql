create table data.subcategories
(
    id          serial
        primary key,
    subcategory text,
    category_id integer not null
        unique
        constraint category_id_fk
            references data.categories
            on update cascade on delete restrict
);

alter table data.subcategories
    owner to postgres;

