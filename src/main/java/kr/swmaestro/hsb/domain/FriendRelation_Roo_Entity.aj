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
import kr.swmaestro.hsb.domain.FriendRelation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FriendRelation_Roo_Entity {
    
    declare @type: FriendRelation: @Entity;
    
    @PersistenceContext
    transient EntityManager FriendRelation.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer FriendRelation.version;
    
    public Integer FriendRelation.getVersion() {
        return this.version;
    }
    
    public void FriendRelation.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void FriendRelation.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void FriendRelation.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            FriendRelation attached = FriendRelation.findFriendRelation(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void FriendRelation.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void FriendRelation.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public FriendRelation FriendRelation.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        FriendRelation merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager FriendRelation.entityManager() {
        EntityManager em = new FriendRelation().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long FriendRelation.countFriendRelations() {
        return entityManager().createQuery("SELECT COUNT(o) FROM FriendRelation o", Long.class).getSingleResult();
    }
    
    public static List<FriendRelation> FriendRelation.findAllFriendRelations() {
        return entityManager().createQuery("SELECT o FROM FriendRelation o", FriendRelation.class).getResultList();
    }
    
    public static FriendRelation FriendRelation.findFriendRelation(Long id) {
        if (id == null) return null;
        return entityManager().find(FriendRelation.class, id);
    }
    
    public static List<FriendRelation> FriendRelation.findFriendRelationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FriendRelation o", FriendRelation.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
