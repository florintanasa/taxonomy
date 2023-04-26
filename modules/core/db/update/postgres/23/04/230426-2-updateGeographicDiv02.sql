-- update TAXONOMY_GEOGRAPHIC_DIV set ID_TAXONOMIC_UNITS_ID = <default_value> where ID_TAXONOMIC_UNITS_ID is null ;
alter table TAXONOMY_GEOGRAPHIC_DIV alter column ID_TAXONOMIC_UNITS_ID set not null ;
