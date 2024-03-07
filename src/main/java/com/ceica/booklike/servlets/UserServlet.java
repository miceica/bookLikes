package com.ceica.booklike.servlets;

import com.ceica.booklike.controller.BookController;
import com.ceica.booklike.models.BookDTO;
import com.ceica.booklike.models.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "userServlet", value = "/user")
public class UserServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String logoutParam = request.getParameter("logout");
        // Si el parámetro "logout" tiene el valor "salir"
        if ("salir".equals(logoutParam)) {
            // Obtener la sesión actual (creará una nueva si no existe)
            HttpSession session = request.getSession(false);
            if (session != null) {
                // Invalidar la sesión
                session.invalidate();
                // Redireccionar a la página de inicio de sesión, o donde corresponda
                response.sendRedirect(request.getContextPath() + "/");
            }
        } else {
            User user = (User) request.getSession().getAttribute("user");
            if (user == null) {
                response.sendRedirect("");
            } else {
                BookController bookController = new BookController();

                if (request.getParameter("idbook") != null) {
                    int idbook = Integer.parseInt(request.getParameter("idbook"));
                    int favs = bookController.fav(user.getIduser(), idbook);
                    PrintWriter out = response.getWriter();
                    out.write(favs + "");

                } else {
                    List<BookDTO> bookDTOList = bookController.getAllBooksAndFavs();
                    request.setAttribute("bookDTOlist", bookDTOList);
                    request.getRequestDispatcher("user.jsp").forward(request, response);
                }
            }
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        request.getRequestDispatcher("").forward(request, response);
    }
}