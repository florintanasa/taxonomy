alter table TAXONOMY_TAXONOMIC_UNITS add constraint FK_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_UNIT_TYPES foreign key (ID_TAXON_UNIT_TYPES) references TAXONOMY_TAXON_UNIT_TYPES(ID);
create index IDX_TAXONOMY_TAXONOMIC_UNITS_ON_ID_TAXON_UNIT_TYPES on TAXONOMY_TAXONOMIC_UNITS (ID_TAXON_UNIT_TYPES);
