package Servlets;

import Classes.DB.db;
import Classes.Models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "auth", value = "/auth")
public class auth extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("currentUser");
        if (user==null) {
            request.getRequestDispatcher("/auth.jsp").forward(request, response);
        }
        response.sendRedirect("/home");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        String redirect = "/auth?errorName";
        User user = db.getUser(name);

        if (user!=null) {
            redirect = "/auth?errorPassword";
            if (user.getPassword().equals(password)){
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", user);
                redirect = "/home";
            }
        }
        response.sendRedirect(redirect);
    }
}
