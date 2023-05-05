package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "TAXONOMY_TAXONOMIC_UNITS")
@Entity(name = "taxonomy_Taxonomic_units")
public class Taxonomic_units extends StandardEntity {
    private static final long serialVersionUID = -7029332924022166082L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;
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

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
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
}