package com.sailing.entity;

import java.util.List;

public class UserAudio {
    private Integer id;

    private String userId;

    private List<Integer> audioIds;

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

    public List<Integer> getAudioIds() {
        return audioIds;
    }

    public void setAudioIds(List<Integer> audioIds) {
        this.audioIds = audioIds;
    }

    @Override
    public String toString() {
        return "UserAudio{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", audioIds=" + audioIds +
                '}';
    }
}