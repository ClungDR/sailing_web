package com.sailing.entity;

import java.util.Date;

public class Audio {
    private Integer id;

    private String name;

    private Integer length;

    private Integer size;

    private String path;

    private String userId;

    private String resourceIds;

    private Date uploadTime;

    public Audio() {
    }

    public Audio(String name, Integer size, String path, String userId) {
        this.name = name;
        this.size = size;
        this.path = path;
        this.userId = userId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getResourceIds() {
        return resourceIds;
    }

    public void setResourceIds(String resourceIds) {
        this.resourceIds = resourceIds;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    @Override
    public String toString() {
        return "Audio{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", length=" + length +
                ", size=" + size +
                ", path='" + path + '\'' +
                ", userId='" + userId + '\'' +
                ", resourceIds='" + resourceIds + '\'' +
                ", uploadTime=" + uploadTime +
                '}';
    }
}