package com.sailing.entity.model;

import com.sailing.entity.User;

import java.util.List;

/**
 * Created by 25824 on 2017/7/15.
 */
public class QuestionWrapUser {
    List<QuestionWrap> questionWraps;
    List<User> users;

    public QuestionWrapUser() {
    }

    public QuestionWrapUser(List<QuestionWrap> questionWraps, List<User> users) {
        this.questionWraps = questionWraps;
        this.users = users;
    }

    public List<QuestionWrap> getQuestionWraps() {
        return questionWraps;
    }

    public void setQuestionWraps(List<QuestionWrap> questionWraps) {
        this.questionWraps = questionWraps;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "QuestionWrapUser{\n" +
                "questionWraps=" + questionWraps +
                "\n, users=" + users +
                '}';
    }
}
