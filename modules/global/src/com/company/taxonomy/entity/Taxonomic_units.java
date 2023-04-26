package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_TAXONOMIC_UNITS")
@Entity(name = "taxonomy_Taxonomic_units")
public class Taxonomic_units extends StandardEntity {
    private static final long serialVersionUID = -7029332924022166082L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }
}