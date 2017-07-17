package com.sailing.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.Date;

public class Question {
	private Integer id;

	private String userId;

	private Integer videoId;

	private String description;

	private Date createTime;
	@JsonIgnore
	private Integer isDelete;

	public Question() {
	}

	public Question(String description,Integer videoId) {
		this.videoId = videoId;
		this.description = description;
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

	public Integer getVideoId() {
		return videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	@Override
	public String toString() {
		return "Question{" + "id=" + id + ", userId='" + userId + '\''
		        + ", videoId=" + videoId + ", description='" + description
		        + '\'' + ", createTime=" + createTime + ", isDelete=" + isDelete
		        + '}';
	}
}