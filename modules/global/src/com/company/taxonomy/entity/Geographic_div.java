package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_GEOGRAPHIC_DIV")
@Entity(name = "taxonomy_Geographic_div")
public class Geographic_div extends StandardEntity {
    private static final long serialVersionUID = 5926118522697106535L;
    @NotNull
    @Column(name = "GEOGRAPHIC_VALUE", length = 45, nullable = false)
    private String geographic_value;
    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    public String getGeographic_value() {
        return geographic_value;
    }

    public void setGeographic_value(String geographic_value) {
        this.geographic_value = geographic_value;
    }

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }
}