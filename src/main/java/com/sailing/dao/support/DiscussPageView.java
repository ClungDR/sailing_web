package com.sailing.dao.support;

/**
 * 讨论的分页查询 默认查询条数 10条/页 默认排序列 discuss_time 默认排序方式 DESC
 *
 */
public class DiscussPageView extends PageView {
	protected Integer userId;
	protected Integer videoId;

	public DiscussPageView() {
		super(0,10);
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getVideoId() {
		return videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}
}
