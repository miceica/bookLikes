package com.ceica.booklike.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Like extends ModeloBase {
    private int idlike;

    public Like() {
    }

    public int getIdlike() {
        return idlike;
    }

    public void setIdlike(int idlike) {
        this.idlike = idlike;
    }

    @Override
    protected String getNombreTabla() {
        return "like";
    }

    @Override
    public String toString() {
        return "Likes{" +
                "idlike=" + idlike +
                '}';
    }

    public List<Like> getAll() {
        List<Like> likesList = new ArrayList<>();
        Like likes = new Like();
        Connection connection = likes.getConnection();
        String consulta = "select idlike from like";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(consulta);
            while (resultSet.next()) {
                Like like1 = new Like();
                like1.setIdlike(resultSet.getInt("idlike"));
                likesList.add(like1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return likesList;
    }
}
