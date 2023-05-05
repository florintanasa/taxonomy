create unique index MULTIINDEX_NODC_ID_ID on TAXONOMY_NODC_IDS (NODC_ID, ID) where DELETE_TS is null ;
