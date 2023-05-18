alter table TAXONOMY_TAXON_AUTHORS_LKP add constraint FK_TAXONOMY_TAXON_AUTHORS_LKP_ON_ID_KINGDOMS foreign key (ID_KINGDOMS) references TAXONOMY_KINGDOMS(ID);
create unique index MULTIINDEX_ID_KINGDOMS_TAXON_AUTHOR_ID on TAXONOMY_TAXON_AUTHORS_LKP (ID_KINGDOMS, TAXON_AUTHOR_ID) where DELETE_TS is null ;
create index IDX_TAXONOMY_TAXON_AUTHORS_LKP_ON_ID_KINGDOMS on TAXONOMY_TAXON_AUTHORS_LKP (ID_KINGDOMS);
