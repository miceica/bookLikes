package com.ceica.booklike.controller;

import com.ceica.booklike.models.User;

public class BookController {
    public User userLogged;
    public boolean login(String user, String pass) {
        userLogged=new User();
        userLogged.setUsername(user);
        return true;
    }
}
