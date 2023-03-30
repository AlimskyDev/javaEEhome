package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/language")
public class language extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String lang = request.getParameter("language");
        String returnURL = request.getParameter("returnURL");

        Cookie[] cookies = request.getCookies();
        Boolean haveCookie = false;

        if (cookies != null) {
            for (Cookie coo : cookies) {
                if (coo.getName().equals("lang")) {
                    haveCookie = true;
                    break;
                }
            }
        }

        if (haveCookie) {
            for (Cookie coo : cookies) {
                if (coo.getName().equals("lang")) {
                    coo.setValue(lang);
                    coo.setMaxAge(365*24*60*60);
                    response.addCookie(coo);
                    break;
                }
            }
        } else {
            Cookie cooLang = new Cookie("lang", lang);
            cooLang.setMaxAge(365*24*60*60);
            response.addCookie(cooLang);
        }

        if (returnURL != null) {
            request.getRequestDispatcher("/"+returnURL+"?lang="+lang).forward(request, response);
        } else {
            request.getRequestDispatcher(request.getContextPath()).forward(request, response);
        }
    }
}
