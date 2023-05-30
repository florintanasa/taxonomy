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
    UNIT_IND1 varchar(1),
    UNIT_NAME1 varchar(35) not null,
    UNIT_IND2 varchar(1),
    UNIT_NAME2 varchar(35),
    UNIT_IND3 varchar(7),
    UNIT_NAME3 varchar(35),
    UNIT_IND4 varchar(7),
    UNIT_NAME4 varchar(35),
    UNNAMED_TAXON_IND varchar(1),
    USAGE varchar(12) not null,
    UNACCEPT_REASON varchar(50),
    CREDIBILITY_RTNG varchar(40),
    COMPLETENESS_RTNG varchar(10),
    CURRENCY_RATING varchar(7),
    PHYLO_SORT_SEQ integer,
    INITIAL_TIME_STAMP timestamp,
    KINGDOM_ID uuid not null,
    ID_TAXON_UNIT_TYPES uuid not null,
    ID_TAXON_AUTHORS_LKP uuid,
    TAXON_AUTHOR_ID integer,
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
-- begin TAXONOMY_KINGDOMS
create table TAXONOMY_KINGDOMS (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    KINGDOM_NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_KINGDOMS
-- begin TAXONOMY_TAXON_UNIT_TYPES
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
)^
-- end TAXONOMY_TAXON_UNIT_TYPES
-- begin TAXONOMY_HIERARCHY
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
)^
-- end TAXONOMY_HIERARCHY
-- begin TAXONOMY_STRIPPEDAUTHOR
create table TAXONOMY_STRIPPEDAUTHOR (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TAXON_AUTHOR_ID integer not null,
    SHORTAUTHOR varchar(255) not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_STRIPPEDAUTHOR
-- begin TAXONOMY_TAXON_AUTHORS_LKP
create table TAXONOMY_TAXON_AUTHORS_LKP (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TAXON_AUTHOR varchar(100) not null,
    SHORT_AUTHOR varchar(100),
    ID_KINGDOMS uuid not null,
    TAXON_AUTHOR_ID integer not null,
    --
    primary key (ID)
)^
-- end TAXONOMY_TAXON_AUTHORS_LKP
