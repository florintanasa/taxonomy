package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_KINGDOMS")
@Entity(name = "taxonomy_Kingdoms")
public class Kingdoms extends StandardEntity {
    private static final long serialVersionUID = -5972721765614109736L;

    @NotNull
    @Column(name = "KINGDOM_NAME", nullable = false, unique = true)
    private String kingdom_name;

    public String getKingdom_name() {
        return kingdom_name;
    }

    public void setKingdom_name(String kingdom_name) {
        this.kingdom_name = kingdom_name;
    }
}