package com.sailing.entity.model;

import java.util.List;

import com.sailing.entity.Discuss;
import com.sailing.entity.User;

public class DiscussUserWrap {
    List<Discuss> discusses;
    List<User> users;
    public DiscussUserWrap() {
    }

    public DiscussUserWrap(List<Discuss> discusses, List<User> users) {
        this.discusses = discusses;
        this.users = users;
    }

    public List<Discuss> getDiscusses() {
        return discusses;
    }

    public void setDiscusses(List<Discuss> discusses) {
        this.discusses = discusses;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "DiscussUser{" +
                "discusses=" + discusses +
                ", users=" + users +
                '}';
    }
}
