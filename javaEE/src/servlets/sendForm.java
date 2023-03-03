package servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "sendForm", value = "/sendForm")
public class sendForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("user_name");
        String surname = request.getParameter("user_surname");
        String food = request.getParameter("food");


        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print("name - " + name + ";<br>");
        out.print("surname - " + surname+ ";<br>");
        out.print("food - " + food + ";");
    }
}
