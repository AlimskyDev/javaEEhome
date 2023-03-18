package servlets;

import Classes.DBManager;
import Classes.Task;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/deleteChangeTask")
public class deleteChangeTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action!=null) {
            if (action.equals("change")) {
                Long id = Long.parseLong(request.getParameter("id"));
                Task task = DBManager.getTask(id);
                if (task!=null) {
                    task.setName(request.getParameter("name"));
                    task.setDescription(request.getParameter("descr"));
                    task.setDone(request.getParameter("done"));
                    task.setDeadlineDate(request.getParameter("date"));

                    response.sendRedirect("/HomeServlet");
                }
            } else if (action.equals("delete")){
                Long id = Long.parseLong(request.getParameter("id"));
                DBManager.deleteTask(id);
                System.out.println(id);

                response.sendRedirect("/HomeServlet");
            }
        }
    }
}