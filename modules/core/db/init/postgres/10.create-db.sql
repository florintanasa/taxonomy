-- begin TAXONOMY_COMMENTS
create table TAXONOMY_COMMENTS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    COMMENT_ID integer not null,
    COMMENTATOR varchar(100),
    COMMENT_DETAIL varchar(2000),
    --
    primary key (ID)
)^
-- end TAXONOMY_COMMENTS
-- begin TAXONOMY_GEOGRAPHIC_DIV
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
    TSN integer not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_GEOGRAPHIC_DIV
-- begin TAXONOMY_TAXONOMIC_UNITS
create table TAXONOMY_TAXONOMIC_UNITS (
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
    --
    primary key (ID)
)^
-- end TAXONOMY_TAXONOMIC_UNITS
