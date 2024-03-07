package com.ceica.booklike;

import java.io.*;

import com.ceica.booklike.controller.BookController;
import com.ceica.booklike.models.Book;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        BookController bookController = new BookController();
        System.out.println(bookController.deleteBook(3));
        //System.out.println(bookController.getAllBooksAndFavs());






        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}