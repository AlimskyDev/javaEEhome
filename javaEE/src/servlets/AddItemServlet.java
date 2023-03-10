package servlets;

import db.DBUtil;
import item.Item;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/additem")
public class AddItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/additem.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int amount = Integer.parseInt(request.getParameter("amount"));

        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setAmount(amount);

        DBUtil.addItem(item);

        response.sendRedirect("/additem?success");
    }
}
