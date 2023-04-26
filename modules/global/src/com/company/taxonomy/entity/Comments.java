package com.company.taxonomy.entity;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.List;

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
    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "id_comments")
    private List<Tu_comments_links> comments_links;

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

    public List<Tu_comments_links> getComments_links() {
        return comments_links;
    }

    public void setComments_links(List<Tu_comments_links> comments_links) {
        this.comments_links = comments_links;
    }
}