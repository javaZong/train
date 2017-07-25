package com.train.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * Created by java_zong on 2017/7/8.
 */
public class User {
    private Integer id;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String username;
    @JsonInclude
    private String password;

    public User(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
}
