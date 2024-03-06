package com.ceica.booklike.controller;

import com.ceica.booklike.models.Book;
import com.ceica.booklike.models.BookDTO;
import com.ceica.booklike.models.Fav;
import com.ceica.booklike.models.User;

import java.util.List;


public class BookController {

    public User userLogged;

    // ------------------- User ----------------------

    public boolean login(String username, String pass) {
        User user = new User();
        userLogged = user.login(username, pass);
        if (userLogged != null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean createUser(String name, String pass) {
        User user = new User();
        return user.create("(name,pass) values (?,?)", name, pass);
    }

    // ------------------- Book ----------------------

    public List<BookDTO> getAllBooksAndFavs() {
        BookDTO bookDTO = new BookDTO();
        return bookDTO.getAllAndFavs();
    }

    public List<Book> getAllBooksByUser(int iduser) {
        Book book = new Book();
        return book.getAllByUser(iduser);
    }

    public boolean createBook(String title, String description, String author, String  isbn, int user_id ) {
        Book book = new Book();
        return book.create("(title,description,author,isbn,user_id) values (?,?,?,?,?)", title, description, author, isbn, user_id);
    }

    public boolean deleteBook(int idBook) {
        Book book = new Book();
        return book.delete("idbook=?", idBook);
    }

    public boolean updateBook(Book book) {
        Book objBook = new Book();
        return objBook.update("title=?,description=?,author=?,isbn=? where idbook=?", book.getTitle(), book.getDescription(), book.getAuthor(), book.getIsbn(),book.getIdbook());
    }

    // ------------------- Fav ----------------------

    public boolean fav(int user_id,int book_id) {
        Fav fav = new Fav();
        return  fav.create("(user_id,book_id) values (?,?)",user_id,book_id);
    }
}
