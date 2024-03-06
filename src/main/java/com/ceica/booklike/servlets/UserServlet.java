package com.ceica.booklike.servlets;

import com.ceica.booklike.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "userServlet", value = "/user")

public class UserServlet extends HttpServlet {

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user= (User) request.getSession().getAttribute("user");
        if(user==null){
            response.sendRedirect("login");
        }else{
            request.setAttribute("username",user.getUsername());
            request.getRequestDispatcher("user.jsp").forward(request,response);
        }

    }
    /*public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("").forward(request, response);
    }*/
    public void destroy() {
    }
}