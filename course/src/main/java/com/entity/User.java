package com.entity;

public class User {
    private int id;
    private String userName;
    private String password;
    private int root;



    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
        this.root=0;
    }

    public User(int id, String userName) {
        this.id = id;
        this.userName = userName;
    }

    public User(int id, String userName, int root){
        this.id=id;
        this.userName=userName;
        this.root=root;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getRoot() {
        return root;
    }

}
