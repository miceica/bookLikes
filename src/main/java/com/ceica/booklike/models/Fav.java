package com.ceica.booklike.models;

public class Fav extends ModeloBase {
    private int idfav;
    private int user_id;
    private int book_id;

    public Fav() {
    }

    public int getIdlike() {
        return idfav;
    }

    public void setIdlike(int idlike) {
        this.idfav = idlike;
    }

    public int getUser_id() {return user_id;}

    public void setUser_id(int user_id) {this.user_id = user_id;}

    public int getBook_id() {return book_id;}

    public void setBook_id(int book_id) {this.book_id = book_id;}

    @Override
    protected String getNombreTabla() {
        return "fav";
    }

    @Override
    public String toString() {
        return "Like{" +
                "idlike=" + idfav +
                ", user_id=" + user_id +
                ", book_id=" + book_id +
                '}';
    }
}
