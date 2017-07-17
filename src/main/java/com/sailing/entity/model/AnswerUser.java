package com.sailing.entity.model;

import com.sailing.entity.Answer;
import com.sailing.entity.User;

import javax.jws.soap.SOAPBinding;

/**
 * Created by 25824 on 2017/7/16.
 */
public class AnswerUser {
    Answer answer;
    User user;

    public AnswerUser() {
    }

    public AnswerUser(Answer answer, User user) {
        this.answer = answer;
        this.user = user;
    }

    public Answer getAnswer() {
        return answer;
    }

    public void setAnswer(Answer answer) {
        this.answer = answer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "AnswerUser{" +
                "answer=" + answer +
                ", user=" + user +
                '}';
    }
}
