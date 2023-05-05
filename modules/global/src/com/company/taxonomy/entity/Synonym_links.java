package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_SYNONYM_LINKS",
        indexes = @Index(name = "multiIndex_ID_TAXONOMIC_UNITS",
                columnList = "ID_TAXONOMIC_UNITS_ID, ID_TAXONOMIC_UNITS_ACCEPTED_ID", unique = true))
@Entity(name = "taxonomy_Synonym_links")
public class Synonym_links extends StandardEntity {
    private static final long serialVersionUID = 5994146296396536303L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @NotNull
    @Column(name = "TSN_ACCEPTED", nullable = false)
    private Integer tsn_accepted;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ID", nullable = false)
    private Taxonomic_units id_taxonomic_units;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ACCEPTED_ID", nullable = false)
    private Taxonomic_units id_taxonomic_units_accepted;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public Integer getTsn_accepted() {
        return tsn_accepted;
    }

    public void setTsn_accepted(Integer tsn_accepted) {
        this.tsn_accepted = tsn_accepted;
    }

    public Taxonomic_units getId_taxonomic_units() {
        return id_taxonomic_units;
    }

    public void setId_taxonomic_units(Taxonomic_units id_taxonomic_units) {
        this.id_taxonomic_units = id_taxonomic_units;
    }

    public Taxonomic_units getId_taxonomic_units_accepted() {
        return id_taxonomic_units_accepted;
    }

    public void setId_taxonomic_units_accepted(Taxonomic_units id_taxonomic_units_accepted) {
        this.id_taxonomic_units_accepted = id_taxonomic_units_accepted;
    }
}