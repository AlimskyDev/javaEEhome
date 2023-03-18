package servlets;

import Classes.DBManager;
import Classes.Task;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "addTask", value = "/addTask")
public class addTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Task task = new Task();
        task.setName(request.getParameter("name"));
        task.setDescription(request.getParameter("descr"));
        task.setDeadlineDate(request.getParameter("date"));
        task.setDone("No");
        if (task!=null) {
            DBManager.addTask(task);
        }
        response.sendRedirect("/");
    }
}
