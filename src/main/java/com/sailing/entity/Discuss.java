package com.sailing.entity;

import java.util.Date;

public class Discuss {
    private Integer id;

    private String userId;

    private String content;

    private Date discussTime;

    private Integer videoId;

    public Discuss() {
    }

    public Discuss( String content, Integer videoId) {
        this.content = content;
        this.videoId = videoId;
    }

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDiscussTime() {
        return discussTime;
    }

    public void setDiscussTime(Date discussTime) {
        this.discussTime = discussTime;
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    @Override
    public String toString() {
        return "Discuss{" +
                "id=" + id +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", discussTime=" + discussTime +
                ", videoId=" + videoId +
                '}';
    }
}