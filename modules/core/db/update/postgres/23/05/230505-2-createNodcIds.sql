alter table TAXONOMY_NODC_IDS add constraint FK_TAXONOMY_NODC_IDS_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID);
create unique index MULTIINDEX_ID_TAXONOMIC_UNITS_ID on TAXONOMY_NODC_IDS (ID_TAXONOMIC_UNITS_ID, ID) where DELETE_TS is null ;
create index IDX_TAXONOMY_NODC_IDS_ON_ID_TAXONOMIC_UNITS on TAXONOMY_NODC_IDS (ID_TAXONOMIC_UNITS_ID);
