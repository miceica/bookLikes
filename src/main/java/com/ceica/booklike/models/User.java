package com.ceica.booklike.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User extends ModeloBase{
    //Atributos de User
    private int iduser;
    private String username;
    private String pass;

    //Constructor vacio
    public User() {
    }

    //getter and setters
    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return pass;
    }

    public void setPassword(String pass) {
        this.pass = pass;
    }

    public User login(String username, String pass) {
        User user = new User();
        Connection conn = user.getConnection();
        String sql = "select iduser,username from " +
                "where username=? and pass=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, pass);
            ResultSet resultSet = pst.executeQuery();
            if (resultSet.next()) {
                user.iduser = resultSet.getInt("iduser");
                user.username = resultSet.getString("username");

                return user;
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void setPass (String pass){
        this.pass = pass;
    }
    public String getPass () {
        return pass;
    }

    @Override
    protected String getNombreTabla() {
        return null;
    }

    @Override
    public String toString() {
        return "User{" +
                "iduser=" + iduser +
                ", username='" + username + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }
}
