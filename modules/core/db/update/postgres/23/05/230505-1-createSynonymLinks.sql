create table TAXONOMY_SYNONYM_LINKS (
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
    TSN_ACCEPTED integer not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    ID_TAXONOMIC_UNITS_ACCEPTED_ID uuid not null,
    --
    primary key (ID)
);