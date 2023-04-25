alter table TAXONOMY_GEOGRAPHIC_DIV add column TSN integer ^
update TAXONOMY_GEOGRAPHIC_DIV set TSN = 0 where TSN is null ;
alter table TAXONOMY_GEOGRAPHIC_DIV alter column TSN set not null ;
