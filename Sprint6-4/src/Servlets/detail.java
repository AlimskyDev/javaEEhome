package Servlets;

import Classes.DB.db;
import Classes.Models.LanguageMenu;
import Classes.Models.NewsModel;
import Classes.Models.Page;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/detail")
public class detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Page page = new Page();
        db.pageAdmin(page);
        request.setAttribute("page", page);

        Long id = Long.parseLong(request.getParameter("id"));

        LanguageMenu language = db.language(request.getParameter("language"));
        request.setAttribute("language", language);

        NewsModel news = db.getNewsModel(id);
        request.setAttribute("news", news);

        request.getRequestDispatcher("/detail.jsp").forward(request, response);
    }
}
