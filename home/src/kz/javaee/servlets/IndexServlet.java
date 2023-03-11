package kz.javaee.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import kz.javee.db.DBManager;
import kz.javee.db.Items;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Items> items = DBManager.getItems();
        response.setContentType("text/html");
        PrintWriter pr = response.getWriter();

        pr.println("<h2>Items list</h2>");
        for (Items it  : items) {
            pr.println("<h3>"+it.getId()+" "+it.getName()+" "+it.getPrice()+" "+it.getAmount()+"</h3>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
