package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "TAXONOMY_TAXONOMIC_UNITS")
@Entity(name = "taxonomy_Taxonomic_units")
public class Taxonomic_units extends StandardEntity {
    private static final long serialVersionUID = -7029332924022166082L;

    @NotNull
    @Column(name = "TSN", nullable = false)
    private Integer tsn;
    @Composition
    @OneToMany(mappedBy = "id_taxonomic_units")
    private List<Geographic_div> Geographic_divs;

    public Integer getTsn() {
        return tsn;
    }

    public void setTsn(Integer tsn) {
        this.tsn = tsn;
    }

    public List<Geographic_div> getGeographic_divs() {
        return Geographic_divs;
    }

    public void setGeographic_divs(List<Geographic_div> geographic_divs) {
        Geographic_divs = geographic_divs;
    }
}