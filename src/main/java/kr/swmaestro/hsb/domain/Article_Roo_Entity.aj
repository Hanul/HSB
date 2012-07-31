// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import kr.swmaestro.hsb.domain.Article;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Article_Roo_Entity {
    
    declare @type: Article: @Entity;
    
    @PersistenceContext
    transient EntityManager Article.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer Article.version;
    
    public Integer Article.getVersion() {
        return this.version;
    }
    
    public void Article.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Article.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Article.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Article attached = Article.findArticle(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Article.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Article.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Article Article.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Article merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Article.entityManager() {
        EntityManager em = new Article().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Article.countArticles() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Article o", Long.class).getSingleResult();
    }
    
    public static List<Article> Article.findAllArticles() {
        return entityManager().createQuery("SELECT o FROM Article o", Article.class).getResultList();
    }
    
    public static Article Article.findArticle(Long id) {
        if (id == null) return null;
        return entityManager().find(Article.class, id);
    }
    
    public static List<Article> Article.findArticleEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Article o", Article.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
