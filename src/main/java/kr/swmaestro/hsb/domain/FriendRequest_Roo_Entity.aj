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
import kr.swmaestro.hsb.domain.FriendRequest;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FriendRequest_Roo_Entity {
    
    declare @type: FriendRequest: @Entity;
    
    @PersistenceContext
    transient EntityManager FriendRequest.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer FriendRequest.version;
    
    public Integer FriendRequest.getVersion() {
        return this.version;
    }
    
    public void FriendRequest.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void FriendRequest.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void FriendRequest.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            FriendRequest attached = FriendRequest.findFriendRequest(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void FriendRequest.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void FriendRequest.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public FriendRequest FriendRequest.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        FriendRequest merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager FriendRequest.entityManager() {
        EntityManager em = new FriendRequest().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long FriendRequest.countFriendRequests() {
        return entityManager().createQuery("SELECT COUNT(o) FROM FriendRequest o", Long.class).getSingleResult();
    }
    
    public static List<FriendRequest> FriendRequest.findAllFriendRequests() {
        return entityManager().createQuery("SELECT o FROM FriendRequest o", FriendRequest.class).getResultList();
    }
    
    public static FriendRequest FriendRequest.findFriendRequest(Long id) {
        if (id == null) return null;
        return entityManager().find(FriendRequest.class, id);
    }
    
    public static List<FriendRequest> FriendRequest.findFriendRequestEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FriendRequest o", FriendRequest.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
