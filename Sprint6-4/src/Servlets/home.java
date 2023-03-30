package Servlets;

import Classes.DB.db;
import Classes.Models.LanguageMenu;
import Classes.Models.NewsModel;
import Classes.Models.Page;
import Classes.Models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/home")
public class home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Page page = new Page();
        db.pageHome(page);
        request.setAttribute("page", page);

        ArrayList<NewsModel> news = null;
        Cookie[] cookies = request.getCookies();

        if (cookies!=null) {
            for (Cookie coo : cookies) {
                if (coo.getName().equals("lang")) {
                    if (coo.getValue().equals("ru")) {
                        news = db.getNewsRu();
                        LanguageMenu language = db.language("ru");
                        request.setAttribute("language", language);
                        break;
                    } else if (coo.getValue().equals("en")){
                        news = db.getNewsEn();
                        LanguageMenu language = db.language("en");
                        request.setAttribute("language", language);
                        break;
                    }
                }
            }
            if (news==null) {
                news = db.getNewsRu();
                LanguageMenu language = db.language("ru");
                request.setAttribute("language", language);
                Cookie coo = new Cookie("lang", "ru");
                coo.setMaxAge(365*24*60*60);
                response.addCookie(coo);
            }
        }
            request.setAttribute("news", news);

            User user = (User) request.getSession().getAttribute("currentUser");
            if (user!=null) {
                request.getRequestDispatcher("/home.jsp").forward(request, response);
            }
            response.sendRedirect("/auth");


    }
}
