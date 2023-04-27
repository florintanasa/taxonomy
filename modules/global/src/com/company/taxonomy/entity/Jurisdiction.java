package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_JURISDICTION")
@Entity(name = "taxonomy_Jurisdiction")
public class Jurisdiction extends StandardEntity {
    private static final long serialVersionUID = 1111897654964293012L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @NotNull
    @Column(name = "JURISDICTION_VALUE", nullable = false, length = 30)
    private String jurisdiction_value;

    @NotNull
    @Column(name = "ORIGIN", nullable = false, length = 19)
    private String origin;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ID", nullable = false)
    private Taxonomic_units id_taxonomic_units;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public Taxonomic_units getId_taxonomic_units() {
        return id_taxonomic_units;
    }

    public void setId_taxonomic_units(Taxonomic_units id_taxonomic_units) {
        this.id_taxonomic_units = id_taxonomic_units;
    }

    public String getJurisdiction_value() {
        return jurisdiction_value;
    }

    public void setJurisdiction_value(String jurisdiction_value) {
        this.jurisdiction_value = jurisdiction_value;
    }
}