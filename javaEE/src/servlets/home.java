package servlets;

import classes.DBManager;
import classes.Footballer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;

@WebServlet(name = "home", value = "/home")
public class home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print("<div>");
            out.print("<form action='/sendForm' method='post'>");

                out.print("Name ");
                out.print("<input type='text' name='name'><br>");

                out.print("Surname ");
                out.print("<input type='text' name='surname'><br>");

                out.print("Club ");
                out.print("<select name='club'>");
                    out.print("<option>real1</option>");
                    out.print("<option>real2</option>");
                    out.print("<option>real3</option>");
                out.print("</select><br>");

                out.print("Salary ");
                out.print("<input type='number' name='salary'><br>");

                out.print("Transfer price ");
                out.print("<input type='number' name='price'><br>");

                out.print("<button>Add Footballer</button><br>");

            out.print("</form>");
        out.print("</div>");

        ArrayList<Footballer> footballers = DBManager.getAllFootballers();

        for (Footballer fb : footballers) {
            out.print("<h3>" + fb.getName() + fb.getSurname() + "</h3>");
            out.print("<h4>Club - " + fb.getClub() + "</h4>");
            out.print("<h4>Salary - " + fb.getSalary() + "</h4>");
            out.print("<h4>Transfer Price - " + fb.getTransferPrice() + "</h4>");
        }
    }
}
