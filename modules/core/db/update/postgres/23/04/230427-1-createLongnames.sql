create table TAXONOMY_LONGNAMES (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TSN integer not null,
    COMPLETENAME varchar(255) not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    --
    primary key (ID)
);