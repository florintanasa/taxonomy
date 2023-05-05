alter table TAXONOMY_SYNONYM_LINKS add constraint FK_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID);
alter table TAXONOMY_SYNONYM_LINKS add constraint FK_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS_ACCEPTED foreign key (ID_TAXONOMIC_UNITS_ACCEPTED_ID) references TAXONOMY_TAXONOMIC_UNITS(ID);
create unique index MULTIINDEX_ID_TAXONOMIC_UNITS on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ID, ID_TAXONOMIC_UNITS_ACCEPTED_ID) where DELETE_TS is null ;
create index IDX_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ID);
create index IDX_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS_ACCEPTED on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ACCEPTED_ID);
