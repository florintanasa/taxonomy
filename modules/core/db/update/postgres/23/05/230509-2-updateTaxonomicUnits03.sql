-- update TAXONOMY_TAXONOMIC_UNITS set ID_TAXON_UNIT_TYPES = <default_value> where ID_TAXON_UNIT_TYPES is null ;
alter table TAXONOMY_TAXONOMIC_UNITS alter column ID_TAXON_UNIT_TYPES set not null ;
