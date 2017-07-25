package com.sailing.entity;

import java.util.Date;

public class PPT {
    private Integer id;

    private String name;

    private Integer page;

    private Integer size;

    private String path;

    private String resourceIds;

    private String userId;

    private Date uploadTime;

    public PPT() {
    }

    public PPT(String name, Integer size, String path, String userId) {
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

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
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

    public String getResourceIds() {
        return resourceIds;
    }

    public void setResourceIds(String resourceIds) {
        this.resourceIds = resourceIds;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    @Override
    public String toString() {
        return "PPT{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", page=" + page +
                ", size=" + size +
                ", path='" + path + '\'' +
                ", resourceIds='" + resourceIds + '\'' +
                ", userId='" + userId + '\'' +
                ", uploadTime=" + uploadTime +
                '}';
    }
}