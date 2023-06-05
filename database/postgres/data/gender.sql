create table gender
(
    id     serial
        primary key,
    gender text
);

alter table gender
    owner to postgres;

