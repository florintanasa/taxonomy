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
);