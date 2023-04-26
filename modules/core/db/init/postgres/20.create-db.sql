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
