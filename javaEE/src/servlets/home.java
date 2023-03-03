package servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

@WebServlet(name = "home", value = "/home")
public class home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print("<div>");
        out.print("<form action='/sendForm' method='get'>");
            out.print("<label>");

            out.print("Full name <br>");
            out.print("<input type='text' name='fullName'><br>");
            out.print("</label><br>");

            out.print("<label><br>");
            out.print("Age<br>");
            out.print("<input type='number' name='age'><br>");
            out.print("</label><br>");

            out.print("<label><br>");
            out.print("Gender");
            out.print("</label><br>");
            out.print("<input type='radio' name='gender' value='male'> Male <br>");
            out.print("<input type='radio' name='gender' value='female'> Female <br>");

            out.print("<button>Send</button><br>");
        out.print("</form>");
        out.print("</div>");

    }
}
