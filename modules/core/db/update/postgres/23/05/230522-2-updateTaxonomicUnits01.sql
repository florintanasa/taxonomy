update TAXONOMY_TAXONOMIC_UNITS set UNIT_NAME1 = '' where UNIT_NAME1 is null ;
alter table TAXONOMY_TAXONOMIC_UNITS alter column UNIT_NAME1 set not null ;
update TAXONOMY_TAXONOMIC_UNITS set USAGE = '' where USAGE is null ;
alter table TAXONOMY_TAXONOMIC_UNITS alter column USAGE set not null ;
