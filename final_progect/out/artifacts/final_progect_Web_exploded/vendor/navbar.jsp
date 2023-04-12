<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookie = request.getCookies();
    String lang = "ru";
    for (Cookie coo: cookie) {
        if (coo.getValue().equals("en")) {
            lang = "en";
            break;
        }
    }
    String context = (String) request.getAttribute("page");
%>

<% if (lang.equals("en")) {%>
    <nav class="  navbar navbar-expand-lg bg-body-tertiary bg-dark shadow" data-bs-theme="dark" >
        <div class="container-fluid container-sm">
            <a class="navbar-brand" href="/language?language=en&page=home">News.com</a>
            <div class="d-flex">
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/language?language=en&page=admin">Admin panel</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/editProfile">Edit profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="language?language=ru&page=<%=context%>">Ru</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="language?language=en&page=<%=context%>">En</a>
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
<%}%>


<% if (lang.equals("ru")) {%>
<nav class="  navbar navbar-expand-lg bg-body-tertiary bg-dark shadow" data-bs-theme="dark" >
    <div class="container-fluid container-sm">
        <a class="navbar-brand" href="/language?language=ru&page=home">Новости.ру</a>
        <div class="d-flex">
            <div class="collapse navbar-collapse " id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/language?language=ru&page=admin">Админ панель</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/editProfile">Редактировать профиль</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="language?language=ru&page=<%=context%>">Рус</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="language?language=en&page=<%=context%>">Англ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Выйти</a>
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
<%}%>