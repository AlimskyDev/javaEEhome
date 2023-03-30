<%@ page import="Classes.Models.LanguageMenu" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="Classes.Models.Page" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <nav class="  navbar navbar-expand-lg bg-body-tertiary bg-dark shadow" data-bs-theme="dark" >
        <div class="container-fluid container-sm">
            <%
                LanguageMenu language = (LanguageMenu) request.getAttribute("language");
                Page pg = (Page) request.getAttribute("page");
            %>
            <a class="navbar-brand" href="/home"><%=language.getTitle()%></a>
            <div class="d-flex">
                <div class="collapse navbar-collapse " id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/admin?language=<%=language.getLanguage()%>"><%=language.getAdminPanel()%></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="language?language=ru&returnURL=<%=pg.getPage()%>">Ru</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="language?language=en&returnURL=<%=pg.getPage()%>">En</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/logout">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>

            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Переключатель навигации">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>