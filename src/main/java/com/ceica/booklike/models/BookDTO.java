package com.ceica.booklike.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookDTO {
    private int favoritos;
    private String title;
    private String description;
    private String author;
    private int idbook;

    public BookDTO() {
    }

    public int getFavoritos() {
        return favoritos;
    }

    public void setFavoritos(int favoritos) {
        this.favoritos = favoritos;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getIdbook() {
        return idbook;
    }

    public void setIdbook(int idbook) {
        this.idbook = idbook;
    }

    @Override
    public String toString() {
        return "BookDTO{" +
                "favoritos=" + favoritos +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", author='" + author + '\'' +
                ", idbook=" + idbook +
                '}';
    }

    public List<BookDTO> getAllAndFavs() {
        List<BookDTO> bookDTOList = new ArrayList<>();
        Book book = new Book();
        Connection connection = book.getConnection();
        String sql = "SELECT count(*) as favoritos, book.title, book.description, book.author, book.idbook \n" +
                "from book \n" +
                "inner join fav on book.idbook = fav.book_id \n" +
                "group by book.title, book.description, book.author, book.idbook;";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            bookDTOList = readResultSetDTO(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookDTOList;
    }

    private List<BookDTO> readResultSetDTO(ResultSet resultSet) throws SQLException {
        List<BookDTO> bookDTOList = new ArrayList<>();
        while (resultSet.next()){
            BookDTO bookDTO=new BookDTO();
            bookDTO.setIdbook(resultSet.getInt("idbook"));
            bookDTO.setTitle(resultSet.getString("title"));
            bookDTO.setDescription(resultSet.getString("description"));
            bookDTO.setAuthor(resultSet.getString("author"));
            bookDTO.setFavoritos(resultSet.getInt("favoritos"));
            bookDTOList.add(bookDTO);
        }
        return bookDTOList;
    }
}
