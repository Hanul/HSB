// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.model;

import java.lang.Long;
import java.lang.String;
import java.util.Date;

privileged aspect Article_Roo_JavaBean {
    
    public Long Article.getTargetUserId() {
        return this.targetUserId;
    }
    
    public void Article.setTargetUserId(Long targetUserId) {
        this.targetUserId = targetUserId;
    }
    
    public String Article.getTargetUserUsername() {
        return this.targetUserUsername;
    }
    
    public void Article.setTargetUserUsername(String targetUserUsername) {
        this.targetUserUsername = targetUserUsername;
    }
    
    public String Article.getTargetUserNickname() {
        return this.targetUserNickname;
    }
    
    public void Article.setTargetUserNickname(String targetUserNickname) {
        this.targetUserNickname = targetUserNickname;
    }
    
    public String Article.getContent() {
        return this.content;
    }
    
    public void Article.setContent(String content) {
        this.content = content;
    }
    
    public Long Article.getWriterId() {
        return this.writerId;
    }
    
    public void Article.setWriterId(Long writerId) {
        this.writerId = writerId;
    }
    
    public String Article.getWriterUsername() {
        return this.writerUsername;
    }
    
    public void Article.setWriterUsername(String writerUsername) {
        this.writerUsername = writerUsername;
    }
    
    public String Article.getWriterNickname() {
        return this.writerNickname;
    }
    
    public void Article.setWriterNickname(String writerNickname) {
        this.writerNickname = writerNickname;
    }
    
    public Date Article.getWriteDate() {
        return this.writeDate;
    }
    
    public void Article.setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }
    
    public int Article.getCommentCount() {
        return this.commentCount;
    }
    
    public void Article.setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }
    
}
