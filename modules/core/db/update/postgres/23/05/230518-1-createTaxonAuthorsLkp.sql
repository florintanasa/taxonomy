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
);