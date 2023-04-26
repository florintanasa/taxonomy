alter table TAXONOMY_TU_COMMENTS_LINKS add column COMMENT_ID integer ;
alter table TAXONOMY_TU_COMMENTS_LINKS add column TSN integer ^
update TAXONOMY_TU_COMMENTS_LINKS set TSN = 0 where TSN is null ;
alter table TAXONOMY_TU_COMMENTS_LINKS alter column TSN set not null ;
