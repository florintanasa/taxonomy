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
    ID_TAXONOMIC_UNITS_ID uuid not null,
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
-- begin TAXONOMY_TU_COMMENTS_LINKS
create table TAXONOMY_TU_COMMENTS_LINKS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    id_taxonomic_units_id uuid not null,
    id_comments_id uuid not null,
    TSN integer not null,
    COMMENT_ID integer,
    --
    primary key (ID)
)^
-- end TAXONOMY_TU_COMMENTS_LINKS
