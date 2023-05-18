package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_TAXON_AUTHORS_LKP",
        indexes = @Index(name = "multiIndex_ID_KINGDOMS_TAXON_AUTHOR_ID",
        columnList = "ID_KINGDOMS,TAXON_AUTHOR_ID", unique = true))
@Entity(name = "taxonomy_Taxon_authors_lkp")
public class Taxon_authors_lkp extends StandardEntity {
    private static final long serialVersionUID = -2682799790450522227L;

    @NotNull
    @Column(name = "TAXON_AUTHOR", nullable = false, length = 100)
    private String taxon_author;

    @Column(name = "SHORT_AUTHOR", length = 100)
    private String short_author;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_KINGDOMS", nullable = false)
    private Kingdoms id_kingdoms;

    @NotNull
    @Column(name = "TAXON_AUTHOR_ID", nullable = false)
    private Integer taxon_author_id;

    public String getTaxon_author() {
        return taxon_author;
    }

    public void setTaxon_author(String taxon_author) {
        this.taxon_author = taxon_author;
    }

    public String getShort_author() {
        return short_author;
    }

    public void setShort_author(String short_author) {
        this.short_author = short_author;
    }

    public Kingdoms getId_kingdoms() {
        return id_kingdoms;
    }

    public void setId_kingdoms(Kingdoms id_kingdoms) {
        this.id_kingdoms = id_kingdoms;
    }

    public Integer getTaxon_author_id() {
        return taxon_author_id;
    }

    public void setTaxon_author_id(Integer taxon_author_id) {
        this.taxon_author_id = taxon_author_id;
    }
}