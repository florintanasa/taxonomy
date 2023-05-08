-- update TAXONOMY_TAXONOMIC_UNITS set KINGDOM_ID = <default_value> where KINGDOM_ID is null ;
alter table TAXONOMY_TAXONOMIC_UNITS alter column KINGDOM_ID set not null ;
