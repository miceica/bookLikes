package com.ceica.booklike.servlets;

import com.ceica.booklike.controller.BookController;
import com.ceica.booklike.models.BookDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "indexServlet", value = "")
public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        BookController bookController=new BookController();
        List<BookDTO> bookDTOList=bookController.getAllBooksAndFavs();
        request.setAttribute("bookDTOlist",bookDTOList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}