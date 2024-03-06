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
<<<<<<<<< Temporary merge branch 1
        request.getRequestDispatcher("login.jsp").forward(request,response);
=========
        request.getRequestDispatcher("books.jsp").forward(request,response);
>>>>>>>>> Temporary merge branch 2
    }

    public void destroy() {
    }
}