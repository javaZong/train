package com.train.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * Created by java_zong on 2017/4/22.
 */
public class Result {
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private int status;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String message;

    public Result(int status) {
        this.status = status;
    }

    public Result(int status, String message) {
        this.status = status;
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
