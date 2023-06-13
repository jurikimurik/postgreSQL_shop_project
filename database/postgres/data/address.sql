create table data.address
(
    id               serial
        primary key,
    street           text,
    building_number  integer not null,
    frame_number     integer,
    apartment_number integer,
    zip_code         text,
    city             text,
    country          text,
    user_id          integer not null
        unique
        constraint user_id_fk
            references data."user"
            on update cascade on delete restrict
);

alter table data.address
    owner to postgres;

