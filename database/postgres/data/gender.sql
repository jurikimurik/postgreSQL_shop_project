create table data.gender
(
    id     serial
        primary key,
    gender text
);

alter table data.gender
    owner to postgres;

