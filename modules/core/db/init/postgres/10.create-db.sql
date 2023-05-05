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
-- begin TAXONOMY_LONGNAMES
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
    COMPLETENAME varchar(300) not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_LONGNAMES
-- begin TAXONOMY_JURISDICTION
create table TAXONOMY_JURISDICTION (
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
    JURISDICTION_VALUE varchar(30) not null,
    ORIGIN varchar(19) not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_JURISDICTION
-- begin TAXONOMY_SYNONYM_LINKS
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
)^
-- end TAXONOMY_SYNONYM_LINKS
-- begin TAXONOMY_NODC_IDS
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
    NODC_ID varchar(255) not null,
    TSN integer not null,
    ID_TAXONOMIC_UNITS_ID uuid not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_NODC_IDS
