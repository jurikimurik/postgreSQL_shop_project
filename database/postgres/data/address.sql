create table address
(
    id               serial
        primary key,
    street           text,
    building_number  integer not null,
    frame_number     integer,
    apartment_number integer,
    zip_code         text,
    user_id          integer not null
        unique
        constraint user_id_fk
            references "user"
            on update cascade on delete restrict
);

alter table address
    owner to postgres;

