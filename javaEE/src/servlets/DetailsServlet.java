package servlets;

import db.DBManager;
import item.Item;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DetailsServlet", value = "/DetailsServlet")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Item item = DBManager.getItem(id);
        if (item!=null) {
            request.setAttribute("item", item);
            request.getRequestDispatcher("/details.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
