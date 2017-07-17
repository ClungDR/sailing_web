package com.sailing.entity.model;


import com.sailing.entity.Discuss;
import com.sailing.entity.User;

import javax.jws.soap.SOAPBinding;

public class DiscussUser {
    Discuss discuss;
    User user;

    public DiscussUser() {
    }

    public DiscussUser(Discuss discuss, User user) {
        this.discuss = discuss;
        this.user = user;
    }

    public Discuss getDiscuss() {
        return discuss;
    }

    public void setDiscuss(Discuss discuss) {
        this.discuss = discuss;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
