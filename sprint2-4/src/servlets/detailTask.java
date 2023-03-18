package servlets;

import Classes.DBManager;
import Classes.Task;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/detailTask")
public class detailTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Task task = DBManager.getTask(id);

        if (task!=null){
            request.setAttribute("id", task.getId());
            request.setAttribute("task", task);
            request.getRequestDispatcher("/details.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
