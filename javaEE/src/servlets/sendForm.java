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
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");

        String g = "";
        if (gender.equals("male")) {
            g = "Dear Mister";
        } else if (gender.equals("female") && age<18){
            g = "Dude miss";
        } else if (gender.equals("female") && age>=18){
            g = "Dude missis";
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print("Hello - " + g + " " + fullName);
    }
}
