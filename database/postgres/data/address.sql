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
);

alter table address
    owner to postgres;

