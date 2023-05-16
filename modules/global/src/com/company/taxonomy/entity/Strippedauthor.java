package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_STRIPPEDAUTHOR")
@Entity(name = "taxonomy_Strippedauthor")
public class Strippedauthor extends StandardEntity {
    private static final long serialVersionUID = 3259262875447039624L;

    @NotNull
    @Column(name = "TAXON_AUTHOR_ID", nullable = false)
    private Integer taxon_author_id;

    @NotNull
    @Column(name = "SHORTAUTHOR", nullable = false)
    private String shortauthor;

    public Integer getTaxon_author_id() {
        return taxon_author_id;
    }

    public void setTaxon_author_id(Integer taxon_author_id) {
        this.taxon_author_id = taxon_author_id;
    }

    public String getShortauthor() {
        return shortauthor;
    }

    public void setShortauthor(String shortauthor) {
        this.shortauthor = shortauthor;
    }
}