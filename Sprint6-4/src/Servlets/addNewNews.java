package Servlets;

import Classes.DB.db;
import Classes.Models.NewsModel;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

@WebServlet("/addNewNews")
public class addNewNews extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String language = request.getParameter("language");

        String title = null;
        String content = null;
        int lang = 0;
        String dateString = null;

        title = request.getParameter("title");
        content = request.getParameter("content");
        lang = Integer.parseInt(request.getParameter("lang"));

        dateString = request.getParameter("date");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate date = null;

        try {
            date = LocalDate.parse(dateString, formatter);
            System.out.println(date);
        } catch (DateTimeParseException e) {
            e.printStackTrace();
        }

        NewsModel newNews = new NewsModel(null, title, content, lang, java.sql.Date.valueOf(date));

        db.addNewNews(newNews);

        response.sendRedirect("/admin?success&language=" + language);
    }
}
