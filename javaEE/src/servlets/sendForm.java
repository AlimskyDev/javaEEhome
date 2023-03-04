package servlets;

import classes.DBManager;
import classes.Footballer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/sendForm")
public class sendForm extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String club = request.getParameter("club");
        int salary = Integer.parseInt(request.getParameter("salary"));
        int price = Integer.parseInt(request.getParameter("price"));

        Footballer footballer = new Footballer();
        footballer.setName(name);
        footballer.setSurname(surname);
        footballer.setClub(club);
        footballer.setSalary(salary);
        footballer.setTransferPrice(price);

        DBManager.addFootballer(footballer);

        response.sendRedirect("/home");
    }
}
