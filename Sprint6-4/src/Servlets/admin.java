package Servlets;

import Classes.DB.db;
import Classes.Models.LanguageMenu;
import Classes.Models.NewsModel;
import Classes.Models.Page;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin")
public class admin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Page page = new Page();
        db.pageAdmin(page);
        request.setAttribute("page", page);
        System.out.println(page);

        String lang = request.getParameter("language");

        LanguageMenu language = db.language(lang);
        request.setAttribute("language", language);

        request.setAttribute("page", page);

        ArrayList<NewsModel> newsAll = db.getNewsAll();

        request.setAttribute("newsAll", newsAll);

        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    }
}
