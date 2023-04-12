<%@ page import="Classes.Models.NewsModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@include file="vendor/head.jsp"%>
<body>
<%@include file="vendor/navbar.jsp" %>
<br>
  <div class="container-sm shadow-lg" style="padding: 15px">
    <%
      NewsModel news = (NewsModel) request.getAttribute("news");
      if (news!=null) {
    %>
      <p><%=news.getNewsLanguagesModel().getCode()%></p>
      <p><%=news.getNewsPostDateModel().getPost_date()%></p>
      <p><%=news.getId()%></p>
      <h3><%=news.getTitle()%></h3>
      <p><%=news.getContent()%></p>
      <p><%=news.getNewsCategoriesModel().getName()%></p>
      <p><%=news.getNewsLanguagesModel().getName()%></p>
    <%
      } else {
    %>
      <br><br>
      <h1 class="display text-center">404 News == null 404</h1>
    <%
      }
    %>
  </div>
</body>
</html>
