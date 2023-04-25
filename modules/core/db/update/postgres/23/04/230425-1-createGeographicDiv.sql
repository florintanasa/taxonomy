create table TAXONOMY_GEOGRAPHIC_DIV (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    GEOGRAPHIC_VALUE varchar(45) not null,
    --
    primary key (ID)
);