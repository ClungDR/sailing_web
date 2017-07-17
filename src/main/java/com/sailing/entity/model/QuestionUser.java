package com.sailing.entity.model;

import com.sailing.entity.Question;
import com.sailing.entity.User;

/**
 * Created by 25824 on 2017/7/16.
 */
public class QuestionUser {
    Question question;
    User user;

    public QuestionUser() {
    }

    public QuestionUser(Question question, User user) {
        this.question = question;
        this.user = user;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "QuestionUser{" +
                "question=" + question +
                ", user=" + user +
                '}';
    }
}
