package com.sailing.dao.support;

/**
 * Created by 25824 on 2017/7/13.
 */
public class QuestionPageView extends PageView {
    private  Integer videoId;

    public QuestionPageView() {
        super(0, 5);
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }
}
