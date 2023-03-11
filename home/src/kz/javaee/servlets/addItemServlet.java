package kz.javaee.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import kz.javee.db.DBManager;
import kz.javee.db.Items;

import java.io.IOException;
import java.util.List;

@WebServlet("/additem")
public class addItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/additem.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));

        Items it = new Items(null, name, price, amount);
        DBManager.addItem(it);

        response.sendRedirect("/additem?success");
    }
}
