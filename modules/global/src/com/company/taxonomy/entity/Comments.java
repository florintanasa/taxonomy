package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "TAXONOMY_COMMENTS")
@Entity(name = "taxonomy_Comments")
@NamePattern("%s|")
public class Comments extends StandardEntity {
    private static final long serialVersionUID = 2656652422832740000L;

    @NotNull
    @Column(name = "COMMENT_ID", nullable = false)
    private Integer comment_id;
    @Column(name = "COMMENTATOR", length = 100)
    private String commentator;
    @NotNull
    @Column(name = "COMMENT_DETAIL", length = 2000)
    private String comment_detail;

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }

    public String getCommentator() {
        return commentator;
    }

    public void setCommentator(String commentator) {
        this.commentator = commentator;
    }

    public String getComment_detail() {
        return comment_detail;
    }

    public void setComment_detail(String comment_detail) {
        this.comment_detail = comment_detail;
    }
}