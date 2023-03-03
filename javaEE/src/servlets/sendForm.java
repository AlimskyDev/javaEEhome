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
        String fullName = request.getParameter("fullName");
        int points = Integer.parseInt(request.getParameter("points"));

        String point = "F";
        if (points >= 90) {
            point = "A";
        } else if (points >= 75 && points <= 89){
            point = "B";
        } else if (points >= 60 && points <= 74){
            point = "C";
        } else if (points >= 50 && points <= 59) {
            point = "D";
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print(fullName + " got " + point + " for exam");
    }
}
