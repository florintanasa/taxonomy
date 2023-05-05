package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_NODC_IDS",
        indexes = @Index(name = "multiIndex_NODC_ID_ID",
                columnList = "NODC_ID, ID", unique = true))
@Entity(name = "taxonomy_Nodc_ids")
public class Nodc_ids extends StandardEntity {
    private static final long serialVersionUID = 6624929743333389037L;

    @NotNull
    @Column(name = "NODC_ID", nullable = false)
    private String nodc_id;
    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TAXONOMIC_UNITS_ID", nullable = false)
    private Taxonomic_units id_taxonomic_units;

    public String getNodc_id() {
        return nodc_id;
    }

    public void setNodc_id(String nodc_id) {
        this.nodc_id = nodc_id;
    }

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public Taxonomic_units getId_taxonomic_units() {
        return id_taxonomic_units;
    }

    public void setId_taxonomic_units(Taxonomic_units id_taxonomic_units) {
        this.id_taxonomic_units = id_taxonomic_units;
    }
}