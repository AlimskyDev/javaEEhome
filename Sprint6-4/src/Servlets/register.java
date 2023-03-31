package Servlets;

import Classes.DB.db;
import Classes.Models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "register", value = "/register")
public class register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        if (currentUser == null) {
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        response.sendRedirect("/home");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("regName");
        String password = request.getParameter("regPassword");

        String reg = "/register?error";

        User user = db.getUser(name);
        if (user==null) {
            User newUser = new User(null, name, password);
            db.addUser(newUser);
            reg = "/auth?success";
        }
        response.sendRedirect(reg);
    }
}
