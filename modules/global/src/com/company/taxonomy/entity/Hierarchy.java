package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_HIERARCHY")
@Entity(name = "taxonomy_Hierarchy")
public class Hierarchy extends StandardEntity {
    private static final long serialVersionUID = 7642798178748099922L;

    @NotNull
    @Column(name = "HIERARCHY_STRING", nullable = false)
    private String hierarchy_string;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @Column(name = "PARENT_TSN")
    private Integer parent_tsn;

    @NotNull
    @Column(name = "LEVEL", nullable = false)
    private Integer level;

    @NotNull
    @Column(name = "CHILDRENCOUNT", nullable = false)
    private Integer childrencount;

    @NotNull
    @OnDelete(DeletePolicy.CASCADE)
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ID",unique = true)
    private Taxonomic_units id_taxonomicUnits;

    public String getHierarchy_string() {
        return hierarchy_string;
    }

    public void setHierarchy_string(String hierarchy_string) {
        this.hierarchy_string = hierarchy_string;
    }

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public Integer getParent_tsn() {
        return parent_tsn;
    }

    public void setParent_tsn(Integer parent_tsn) {
        this.parent_tsn = parent_tsn;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getChildrencount() {
        return childrencount;
    }

    public void setChildrencount(Integer childrencount) {
        this.childrencount = childrencount;
    }
}