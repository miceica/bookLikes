package com.ceica.booklike.servlets;

import com.ceica.booklike.controller.BookController;
import com.ceica.booklike.models.Book;
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
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "crudServlet", value = "/crud")
public class CrudServlet extends HttpServlet {

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
        }

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("");
        } else {
            BookController bookController = new BookController();
            if (request.getParameter("borraridbook") != null) {
                int idbook = Integer.parseInt(request.getParameter("borraridbook"));
                bookController.deleteBook(idbook);
                PrintWriter printWriter = response.getWriter();
                printWriter.write("Libro eliminado");
            } else {
                List<Book> bookList = bookController.getAllBooksByUser(user.getIduser());
                request.setAttribute("booklist", bookList);
                request.getRequestDispatcher("crud.jsp").forward(request, response);
            }
        }
    }

    //completar esto
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");
        BookController bookController = new BookController();
        bookController.userLogged = user;

        if (user == null) {
            response.sendRedirect("login");
        } else {
            if (request.getParameter("idbook") == null) {
                String title = request.getParameter("newTitle");
                String description = request.getParameter("newDescription");
                String author = request.getParameter("newAuthor");
                String isbn = request.getParameter("newIsbn");

                bookController.createBook(title, description, author, isbn, user.getIduser());

                response.sendRedirect("crud");
            } else {
                String title = request.getParameter("title");
                String description = request.getParameter("description");
                String author = request.getParameter("author");
                String isbn = request.getParameter("isbn");
                int idbook = Integer.parseInt(request.getParameter("idbook"));

                bookController.updateBook(title, description, author, isbn, idbook);

                response.sendRedirect("crud");
            }
        }
    }
}