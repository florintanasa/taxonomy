package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_LONGNAMES")
@Entity(name = "taxonomy_Longnames")
@NamePattern("%s|completename")
public class Longnames extends StandardEntity {
    private static final long serialVersionUID = -6372691847896593621L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @NotNull
    @Column(name = "COMPLETENAME", length = 300, nullable = false)
    private String completename;

    @NotNull
    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ID", unique = true)
    private Taxonomic_units id_taxonomicUnits;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public String getCompletename() {
        return completename;
    }

    public void setCompletename(String completename) {
        this.completename = completename;
    }

    public Taxonomic_units getId_taxonomicUnits() {
        return id_taxonomicUnits;
    }

    public void setId_taxonomicUnits(Taxonomic_units id_taxonomicUnits) {
        this.id_taxonomicUnits = id_taxonomicUnits;
    }
}