package com.sailing.entity;

import java.util.Date;

public class Note {
    private Integer id;

    private String content;

    private Date createTime;

    private String userId;

    private Integer fileId;

    private Integer fileType;

    public Note() {
    }

    public Note(String userId, Integer fileId, Integer fileType) {
        this.userId = userId;
        this.fileId = fileId;
        this.fileType = fileType;
    }

    public Note(String content, String userId, Integer fileId, Integer fileType) {
        this.content = content;
        this.userId = userId;
        this.fileId = fileId;
        this.fileType = fileType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public Integer getFileType() {
        return fileType;
    }

    public void setFileType(Integer fileType) {
        this.fileType = fileType;
    }

    @Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", userId='" + userId + '\'' +
                ", fileId=" + fileId +
                ", fileType=" + fileType +
                '}';
    }
}