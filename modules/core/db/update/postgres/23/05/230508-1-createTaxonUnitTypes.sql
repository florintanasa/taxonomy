create table TAXONOMY_TAXON_UNIT_TYPES (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    KINGDOM_ID uuid not null,
    RANK_ID integer not null,
    RANK_NAME varchar(15) not null,
    DIR_PARENT_RANK_ID integer not null,
    REQ_PARENT_RANK_ID integer not null,
    --
    primary key (ID)
);