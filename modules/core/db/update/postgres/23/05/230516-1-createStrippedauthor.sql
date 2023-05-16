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
);