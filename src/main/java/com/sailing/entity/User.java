package com.sailing.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

public class User {
    private String id;

    private Integer organizationId;

    private String username;
    @JsonIgnore
    private String password;

    private List<Integer> roleIds;
    @JsonIgnore
    private Boolean locked;

    private String headPic;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Integer organizationId) {
        this.organizationId = organizationId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Integer> getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(List<Integer> roleIds) {
        this.roleIds = roleIds;
    }

    public Boolean getLocked() {
        return locked;
    }

    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    public String getHeadPic() {
        return headPic;
    }

    public void setHeadPic(String headPic) {
        this.headPic = headPic;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", organizationId=" + organizationId +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", roleIds='" + roleIds + '\'' +
                ", locked=" + locked +
                ", headPic='" + headPic + '\'' +
                '}';
    }
}