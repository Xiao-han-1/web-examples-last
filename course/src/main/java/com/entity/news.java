package com.entity;

import java.sql.Date;

public class news {
    private int id;
    private String title;
    private String context;
    private Date time;

    public news() {
    }

    public news( int id,String title, String context, Date time) {
        this.id=id;
        this.title = title;
        this.context = context;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
