package servlets;

import classes.db.db;
import classes.models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<User> users = db.getUsers();
        User user = null;

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        boolean foundEmail = false;
        boolean foundPassword = false;
        System.out.println(email);
        if (email.equals("email") && password.equals("password")) {
            request.setAttribute("enter", "enter");
            request.getRequestDispatcher("/user.jsp").forward(request, response);
        } else {
            for (User u : users) {
                if (u.getEmail().equals(email)) {
                    foundEmail = true;
                    if (u.getPassword().equals(password)) {
                        foundPassword = true;
                        user = u;
                        //                    user.setId(u.getId());
                        //                    user.setEmail(u.getEmail());
                        //                    user.setPassword(u.getPassword());
                        //                    user.setFullName(u.getFullName());
                        request.setAttribute("user", user);
                        response.sendRedirect("/account.jsp");
                        return;
                    }
                }
            }

            if (!foundEmail) {
                request.setAttribute("wrongEmail", foundEmail);
            } else if (!foundPassword) {
                request.setAttribute("wrongPassword", foundPassword);
            }
            request.getRequestDispatcher("/user.jsp").forward(request, response);
        }
    }
}
