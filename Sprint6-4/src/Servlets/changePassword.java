package Servlets;

import Classes.DB.db;
import Classes.Models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "changePassword", value = "/changePassword")
public class changePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentPassword = request.getParameter("current_password");
        String newPassword = request.getParameter("new_password");
        String reNewPassword = request.getParameter("re_new_password");

        String redirect = "/changePassword?error1";
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        if (currentPassword.equals(currentUser.getPassword())) {
            redirect = "/changePassword?error2";
            if (newPassword.equals(reNewPassword)) {
                currentUser.setPassword(newPassword);
                db.changePassword(currentUser);
                redirect = "/changePassword?success";
            }
        }
        response.sendRedirect(redirect);
    }
}
