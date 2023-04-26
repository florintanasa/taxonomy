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
    --
    primary key (ID)
);