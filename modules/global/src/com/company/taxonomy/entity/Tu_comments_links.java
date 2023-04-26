package com.company.taxonomy.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "TAXONOMY_TU_COMMENTS_LINKS")
@Entity(name = "taxonomy_Tu_comments_links")
public class Tu_comments_links extends StandardEntity {
    private static final long serialVersionUID = -8658523082771503599L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_taxonomic_units_id")
    private Taxonomic_units id_taxonomic_units;
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_comments_id")
    private Comments id_comments;
    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;
    @NotNull
    @Column(name = "COMMENT_ID")
    private Integer comment_id;

    public Taxonomic_units getId_taxonomic_units() {
        return id_taxonomic_units;
    }

    public void setId_taxonomic_units(Taxonomic_units id_taxonomic_units) {
        this.id_taxonomic_units = id_taxonomic_units;
    }

    public Comments getId_comments() {
        return id_comments;
    }

    public void setId_comments(Comments id_comments) {
        this.id_comments = id_comments;
    }

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }
}