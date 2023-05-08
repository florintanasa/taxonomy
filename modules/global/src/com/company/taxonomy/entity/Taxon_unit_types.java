package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_TAXON_UNIT_TYPES",
        indexes = @Index(name = "TAXON_UT_INDEX",
                columnList = "KINGDOM_ID, RANK_ID", unique = true))
@Entity(name = "taxonomy_Taxon_unit_types")
public class Taxon_unit_types extends StandardEntity {
    private static final long serialVersionUID = -7740665895854879182L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "KINGDOM_ID", nullable = false)
    private Kingdoms id_kingdoms;

    @NotNull
    @Column(name = "RANK_ID", nullable = false)
    private Integer rank_id;

    @NotNull
    @Column(name = "RANK_NAME", nullable = false, length = 15)
    private String rank_name;

    @NotNull
    @Column(name = "DIR_PARENT_RANK_ID", nullable = false)
    private Integer dir_parent_rank_id;

    @NotNull
    @Column(name = "REQ_PARENT_RANK_ID", nullable = false)
    private Integer req_parent_rank_id;

    public Kingdoms getId_kingdoms() {
        return id_kingdoms;
    }

    public void setId_kingdoms(Kingdoms id_kingdoms) {
        this.id_kingdoms = id_kingdoms;
    }

    public Integer getRank_id() {
        return rank_id;
    }

    public void setRank_id(Integer rank_id) {
        this.rank_id = rank_id;
    }

    public String getRank_name() {
        return rank_name;
    }

    public void setRank_name(String rank_name) {
        this.rank_name = rank_name;
    }

    public Integer getDir_parent_rank_id() {
        return dir_parent_rank_id;
    }

    public void setDir_parent_rank_id(Integer dir_parent_rank_id) {
        this.dir_parent_rank_id = dir_parent_rank_id;
    }

    public Integer getReq_parent_rank_id() {
        return req_parent_rank_id;
    }

    public void setReq_parent_rank_id(Integer req_parent_rank_id) {
        this.req_parent_rank_id = req_parent_rank_id;
    }
}