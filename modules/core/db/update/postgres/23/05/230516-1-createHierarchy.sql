create table TAXONOMY_HIERARCHY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    HIERARCHY_STRING varchar(255) not null,
    TSN integer not null,
    PARENT_TSN integer,
    LEVEL integer not null,
    CHILDRENCOUNT integer not null,
    ID_TAXONOMIC_UNITS_ID uuid,
    --
    primary key (ID)
);