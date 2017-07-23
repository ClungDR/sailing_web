package com.sailing.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.Date;

public class Answer {
    private Integer id;

    private String userId;

    private Integer questionId;

    private Integer parent;

    private String content;

    private Date createTime;

    private Integer hit;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getHit() {
        return hit;
    }

    public void setHit(Integer hit) {
        this.hit = hit;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", questionId=" + questionId +
                ", parent=" + parent +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", hit=" + hit +
                '}';
    }
}