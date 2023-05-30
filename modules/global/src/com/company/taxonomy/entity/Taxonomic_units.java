package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

@Table(name = "TAXONOMY_TAXONOMIC_UNITS")
@Entity(name = "taxonomy_Taxonomic_units")
public class Taxonomic_units extends StandardEntity {
    private static final long serialVersionUID = -7029332924022166082L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @Column(name = "UNIT_IND1", length = 1)
    private String unit_ind1;

    @NotNull
    @Column(name = "UNIT_NAME1", length = 35, nullable = false)
    private String unit_name1;

    @Column(name = "UNIT_IND2", length = 1)
    private String unit_ind2;

    @Column(name = "UNIT_NAME2", length = 35)
    private String unit_name2;

    @Column(name = "UNIT_IND3", length = 7)
    private String unit_ind3;

    @Column(name = "UNIT_NAME3", length = 35)
    private String unit_name3;

    @Column(name = "UNIT_IND4", length = 7)
    private String unit_ind4;

    @Column(name = "UNIT_NAME4", length = 35)
    private String unit_name4;

    @Column(name = "UNNAMED_TAXON_IND", length = 1)
    private String unnamed_taxon_ind;

    @NotNull
    @Column(name = "USAGE", length = 12, nullable = false)
    private String usage;

    @Column(name = "UNACCEPT_REASON", length = 50)
    private String unaccept_reason;

    @Column(name = "CREDIBILITY_RTNG", length = 40)
    private String credibility_rtng;

    @Column(name = "COMPLETENESS_RTNG", length = 10)
    private String completeness_rtng;

    @Column(name = "CURRENCY_RATING", length = 7)
    private String currency_rating;

    @Column(name = "PHYLO_SORT_SEQ")
    private Integer phylo_sort_seq;

    @Column(name = "INITIAL_TIME_STAMP")
    private Date initial_time_stamp;

    @Composition
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Geographic_div> Geographic_divs;
    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Tu_comments_links> tu_comments_links;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Jurisdiction> jurisdictions;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Synonym_links> synonymLinks;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_taxonomic_units_accepted")
    private List<Synonym_links> synonym_links;


    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Nodc_ids> nodc_ids;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "KINGDOM_ID", nullable = false)
    private Kingdoms id_kingdoms;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXON_UNIT_TYPES", nullable = false)
    private Taxon_unit_types id_taxon_unit_types;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXON_AUTHORS_LKP")
    private Taxon_authors_lkp id_taxon_authors_lkp;

    @Column(name = "TAXON_AUTHOR_ID")
    private Integer taxon_author_id;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public String getUnit_ind1() {
        return unit_ind1;
    }

    public void setUnit_ind1(String unit_ind1) {
        this.unit_ind1 = unit_ind1;
    }

    public String getUnit_name1() {
        return unit_name1;
    }

    public void setUnit_name1(String unit_name1) {
        this.unit_name1 = unit_name1;
    }

    public String getUnit_ind2() {
        return unit_ind2;
    }

    public void setUnit_ind2(String unit_ind2) {
        this.unit_ind2 = unit_ind2;
    }

    public String getUnit_name2() {
        return unit_name2;
    }

    public void setUnit_name2(String unit_name2) {
        this.unit_name2 = unit_name2;
    }

    public String getUnit_ind3() {
        return unit_ind3;
    }

    public void setUnit_ind3(String unit_ind3) {
        this.unit_ind3 = unit_ind3;
    }

    public String getUnit_name3() {
        return unit_name3;
    }

    public void setUnit_name3(String unit_name3) {
        this.unit_name3 = unit_name3;
    }

    public String getUnit_ind4() {
        return unit_ind4;
    }

    public void setUnit_ind4(String unit_ind4) {
        this.unit_ind4 = unit_ind4;
    }

    public String getUnit_name4() {
        return unit_name4;
    }

    public void setUnit_name4(String unit_name4) {
        this.unit_name4 = unit_name4;
    }

    public String getUnnamed_taxon_ind() {
        return unnamed_taxon_ind;
    }

    public void setUnnamed_taxon_ind(String unnamed_taxon_ind) {
        this.unnamed_taxon_ind = unnamed_taxon_ind;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getUnaccept_reason() {
        return unaccept_reason;
    }

    public void setUnaccept_reason(String unaccept_reason) {
        this.unaccept_reason = unaccept_reason;
    }

    public String getCredibility_rtng() {
        return credibility_rtng;
    }

    public void setCredibility_rtng(String credibility_rtng) {
        this.credibility_rtng = credibility_rtng;
    }

    public String getCompleteness_rtng() {
        return completeness_rtng;
    }

    public void setCompleteness_rtng(String completeness_rtng) {
        this.completeness_rtng = completeness_rtng;
    }

    public String getCurrency_rating() {
        return currency_rating;
    }

    public void setCurrency_rating(String currency_rating) {
        this.currency_rating = currency_rating;
    }

    public Integer getPhylo_sort_seq() {
        return phylo_sort_seq;
    }

    public void setPhylo_sort_seq(Integer phylo_sort_seq) {
        this.phylo_sort_seq = phylo_sort_seq;
    }

    public List<Geographic_div> getGeographic_divs() {
        return Geographic_divs;
    }

    public void setGeographic_divs(List<Geographic_div> geographic_divs) {
        Geographic_divs = geographic_divs;
    }

    public List<Tu_comments_links> getTu_comments_links() {
        return tu_comments_links;
    }

    public void setTu_comments_links(List<Tu_comments_links> tu_comments_links) {
        this.tu_comments_links = tu_comments_links;
    }

    public List<Jurisdiction> getJurisdictions() {
        return jurisdictions;
    }

    public void setJurisdictions(List<Jurisdiction> jurisdictions) {
        this.jurisdictions = jurisdictions;
    }

    public List<Synonym_links> getSynonymLinks() {
        return synonymLinks;
    }

    public void setSynonymLinks(List<Synonym_links> synonymLinks) {
        this.synonymLinks = synonymLinks;
    }

    public List<Synonym_links> getSynonym_links() {
        return synonym_links;
    }

    public void setSynonym_links(List<Synonym_links> synonym_links) {
        this.synonym_links = synonym_links;
    }

    public List<Nodc_ids> getNodc_ids() {
        return nodc_ids;
    }

    public void setNodc_ids(List<Nodc_ids> nodc_ids) {
        this.nodc_ids = nodc_ids;
    }

    public Kingdoms getId_kingdoms() {
        return id_kingdoms;
    }

    public void setId_kingdoms(Kingdoms id_kingdoms) {
        this.id_kingdoms = id_kingdoms;
    }

    public Taxon_unit_types getId_taxon_unit_types() {
        return id_taxon_unit_types;
    }

    public void setId_taxon_unit_types(Taxon_unit_types id_taxon_unit_types) {
        this.id_taxon_unit_types = id_taxon_unit_types;
    }

    public Taxon_authors_lkp getId_taxon_authors_lkp() {
        return id_taxon_authors_lkp;
    }

    public void setId_taxon_authors_lkp(Taxon_authors_lkp id_taxon_authors_lkp) {
        this.id_taxon_authors_lkp = id_taxon_authors_lkp;
    }

    public Integer getTaxon_author_id() {
        return taxon_author_id;
    }

    public void setTaxon_author_id(Integer taxon_author_id) {
        this.taxon_author_id = taxon_author_id;
    }

    public Date getInitial_time_stamp() {
        return initial_time_stamp;
    }

    public void setInitial_time_stamp(Date initial_time_stamp) {
        this.initial_time_stamp = initial_time_stamp;
    }
}