package com.ceica.booklike.servlets;

import com.ceica.booklike.controller.BookController;
import com.ceica.booklike.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            response.sendRedirect("user");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        BookController bookController = new BookController();

        if (bookController.login(user, pass)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", bookController.userLogged);
            response.sendRedirect("user");
        } else {
            request.setAttribute("mensaje", "Usuario o Password incorrecto");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}