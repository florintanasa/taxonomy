-- begin TAXONOMY_GEOGRAPHIC_DIV
alter table TAXONOMY_GEOGRAPHIC_DIV add constraint FK_TAXONOMY_GEOGRAPHIC_DIV_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create index IDX_TAXONOMY_GEOGRAPHIC_DIV_ON_ID_TAXONOMIC_UNITS on TAXONOMY_GEOGRAPHIC_DIV (ID_TAXONOMIC_UNITS_ID)^
-- end TAXONOMY_GEOGRAPHIC_DIV
-- begin TAXONOMY_TU_COMMENTS_LINKS
alter table TAXONOMY_TU_COMMENTS_LINKS add constraint FK_TAXONOMY_TU_COMMENTS_LINKS_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
alter table TAXONOMY_TU_COMMENTS_LINKS add constraint FK_TAXONOMY_TU_COMMENTS_LINKS_ON_ID_COMMENTS foreign key (ID_COMMENTS_ID) references TAXONOMY_COMMENTS(ID)^
create index IDX_TAXONOMY_TU_COMMENTS_LINKS_ON_ID_TAXONOMIC_UNITS on TAXONOMY_TU_COMMENTS_LINKS (ID_TAXONOMIC_UNITS_ID)^
create index IDX_TAXONOMY_TU_COMMENTS_LINKS_ON_ID_COMMENTS on TAXONOMY_TU_COMMENTS_LINKS (ID_COMMENTS_ID)^
-- end TAXONOMY_TU_COMMENTS_LINKS
-- begin TAXONOMY_LONGNAMES
alter table TAXONOMY_LONGNAMES add constraint FK_TAXONOMY_LONGNAMES_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create unique index IDX_TAXONOMY_LONGNAMES_UK_ID_TAXONOMIC_UNITS_ID on TAXONOMY_LONGNAMES (ID_TAXONOMIC_UNITS_ID) where DELETE_TS is null ^
create unique index INDEX_ID_TAXONOMIC_UNITS_ID on TAXONOMY_LONGNAMES (ID_TAXONOMIC_UNITS_ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_LONGNAMES_ON_ID_TAXONOMIC_UNITS on TAXONOMY_LONGNAMES (ID_TAXONOMIC_UNITS_ID)^
-- end TAXONOMY_LONGNAMES
-- begin TAXONOMY_JURISDICTION
alter table TAXONOMY_JURISDICTION add constraint FK_TAXONOMY_JURISDICTION_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create index IDX_TAXONOMY_JURISDICTION_ON_ID_TAXONOMIC_UNITS on TAXONOMY_JURISDICTION (ID_TAXONOMIC_UNITS_ID)^
-- end TAXONOMY_JURISDICTION
-- begin TAXONOMY_SYNONYM_LINKS
alter table TAXONOMY_SYNONYM_LINKS add constraint FK_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
alter table TAXONOMY_SYNONYM_LINKS add constraint FK_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS_ACCEPTED foreign key (ID_TAXONOMIC_UNITS_ACCEPTED_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create unique index MULTIINDEX_ID_TAXONOMIC_UNITS on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ID, ID_TAXONOMIC_UNITS_ACCEPTED_ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ID)^
create index IDX_TAXONOMY_SYNONYM_LINKS_ON_ID_TAXONOMIC_UNITS_ACCEPTED on TAXONOMY_SYNONYM_LINKS (ID_TAXONOMIC_UNITS_ACCEPTED_ID)^
-- end TAXONOMY_SYNONYM_LINKS
-- begin TAXONOMY_NODC_IDS
alter table TAXONOMY_NODC_IDS add constraint FK_TAXONOMY_NODC_IDS_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create unique index MULTIINDEX_NODC_ID_ID on TAXONOMY_NODC_IDS (NODC_ID, ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_NODC_IDS_ON_ID_TAXONOMIC_UNITS on TAXONOMY_NODC_IDS (ID_TAXONOMIC_UNITS_ID)^
-- end TAXONOMY_NODC_IDS
-- begin TAXONOMY_KINGDOMS
create unique index IDX_TAXONOMY_KINGDOMS_UK_KINGDOM_NAME on TAXONOMY_KINGDOMS (KINGDOM_NAME) where DELETE_TS is null ^
-- end TAXONOMY_KINGDOMS
-- begin TAXONOMY_TAXONOMIC_UNITS
alter table TAXONOMY_TAXONOMIC_UNITS add constraint FK_TAXONOMY_TAXONOMIC_UNITS_ON_KINGDOM foreign key (KINGDOM_ID) references TAXONOMY_KINGDOMS(ID)^
alter table TAXONOMY_TAXONOMIC_UNITS add constraint FK_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_UNIT_TYPES foreign key (ID_TAXON_UNIT_TYPES) references TAXONOMY_TAXON_UNIT_TYPES(ID)^
alter table TAXONOMY_TAXONOMIC_UNITS add constraint FK_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_AUTHORS_LKP foreign key (ID_TAXON_AUTHORS_LKP) references TAXONOMY_TAXON_AUTHORS_LKP(ID)^
create index IDX_TAXONOMY_TAXONOMIC_UNITS_ON_KINGDOM on TAXONOMY_TAXONOMIC_UNITS (KINGDOM_ID)^
create index IDX_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_UNIT_TYPES on TAXONOMY_TAXONOMIC_UNITS (ID_TAXON_UNIT_TYPES)^
create index IDX_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_AUTHORS_LKP on TAXONOMY_TAXONOMIC_UNITS (ID_TAXON_AUTHORS_LKP)^
-- end TAXONOMY_TAXONOMIC_UNITS
-- begin TAXONOMY_TAXON_UNIT_TYPES
alter table TAXONOMY_TAXON_UNIT_TYPES add constraint FK_TAXONOMY_TAXON_UNIT_TYPES_ON_KINGDOM foreign key (KINGDOM_ID) references TAXONOMY_KINGDOMS(ID)^
create unique index TAXON_UT_INDEX on TAXONOMY_TAXON_UNIT_TYPES (KINGDOM_ID, RANK_ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_TAXON_UNIT_TYPES_ON_KINGDOM on TAXONOMY_TAXON_UNIT_TYPES (KINGDOM_ID)^
-- end TAXONOMY_TAXON_UNIT_TYPES
-- begin TAXONOMY_HIERARCHY
alter table TAXONOMY_HIERARCHY add constraint FK_TAXONOMY_HIERARCHY_ON_ID_TAXONOMIC_UNITS foreign key (ID_TAXONOMIC_UNITS_ID) references TAXONOMY_TAXONOMIC_UNITS(ID)^
create unique index IDX_TAXONOMY_HIERARCHY_UK_ID_TAXONOMIC_UNITS_ID on TAXONOMY_HIERARCHY (ID_TAXONOMIC_UNITS_ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_HIERARCHY_ON_ID_TAXONOMIC_UNITS on TAXONOMY_HIERARCHY (ID_TAXONOMIC_UNITS_ID)^
-- end TAXONOMY_HIERARCHY
-- begin TAXONOMY_TAXON_AUTHORS_LKP
alter table TAXONOMY_TAXON_AUTHORS_LKP add constraint FK_TAXONOMY_TAXON_AUTHORS_LKP_ON_ID_KINGDOMS foreign key (ID_KINGDOMS) references TAXONOMY_KINGDOMS(ID)^
create unique index MULTIINDEX_ID_KINGDOMS_TAXON_AUTHOR_ID on TAXONOMY_TAXON_AUTHORS_LKP (ID_KINGDOMS, TAXON_AUTHOR_ID) where DELETE_TS is null ^
create index IDX_TAXONOMY_TAXON_AUTHORS_LKP_ON_ID_KINGDOMS on TAXONOMY_TAXON_AUTHORS_LKP (ID_KINGDOMS)^
-- end TAXONOMY_TAXON_AUTHORS_LKP
