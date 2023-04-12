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
  <div class="container-sm">
    <%
      NewsModel news = (NewsModel) request.getAttribute("news");
      if (news!=null) {
    %>
      <p><%=news.getPostDate()%></p>
      <p><%=news.getId()%></p>
      <h3><%=news.getTitle()%></h3>
      <p><%=news.getContent()%></p>
      <p>
        <%if (news.getLanguageId()==1) {%>
          <%=language.getAdminModalInputChangeLanguageOptionEn()%>
        <%} else if (news.getLanguageId()==2) {%>
        <%=language.getAdminModalInputChangeLanguageOptionRu()%>
        <%} %>
      </p>
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
