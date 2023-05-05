create table TAXONOMY_NODC_IDS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    nodc_id varchar(255) not null,
    TSN integer not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    --
    primary key (ID)
);