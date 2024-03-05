package com.ceica.booklike.servlets;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "indexServlet", value = "")
public class IndexServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "LogIn";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("books.jsp").forward(request,response);
    }

    public void destroy() {
    }
}