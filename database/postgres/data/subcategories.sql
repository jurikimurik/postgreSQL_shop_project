create table subcategories
(
    id          serial
        primary key,
    subcategory text,
    category_id integer not null
);

alter table subcategories
    owner to postgres;

