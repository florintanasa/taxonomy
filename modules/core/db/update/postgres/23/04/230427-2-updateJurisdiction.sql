alter table TAXONOMY_JURISDICTION add column JURISDICTION_VALUE varchar(30) ^
update TAXONOMY_JURISDICTION set JURISDICTION_VALUE = '' where JURISDICTION_VALUE is null ;
alter table TAXONOMY_JURISDICTION alter column JURISDICTION_VALUE set not null ;
alter table TAXONOMY_JURISDICTION alter column ORIGIN set data type varchar(19) ;
