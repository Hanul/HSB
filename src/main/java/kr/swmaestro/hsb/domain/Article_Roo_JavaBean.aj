// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package kr.swmaestro.hsb.domain;

import java.lang.String;
import java.util.Date;
import java.util.List;
import kr.swmaestro.hsb.domain.Comment;
import kr.swmaestro.hsb.domain.UserInfo;

privileged aspect Article_Roo_JavaBean {
    
    public UserInfo Article.getTargetUser() {
        return this.targetUser;
    }
    
    public void Article.setTargetUser(UserInfo targetUser) {
        this.targetUser = targetUser;
    }
    
    public String Article.getContent() {
        return this.content;
    }
    
    public void Article.setContent(String content) {
        this.content = content;
    }
    
    public UserInfo Article.getWriterUser() {
        return this.writerUser;
    }
    
    public void Article.setWriterUser(UserInfo writerUser) {
        this.writerUser = writerUser;
    }
    
    public Date Article.getWriteDate() {
        return this.writeDate;
    }
    
    public void Article.setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }
    
    public List<Comment> Article.getCommentList() {
        return this.commentList;
    }
    
    public void Article.setCommentList(List<Comment> commentList) {
        this.commentList = commentList;
    }
    
}
