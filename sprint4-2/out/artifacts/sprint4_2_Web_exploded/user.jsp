<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 19.03.2023
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
  <%@include file="vendor/head.jsp" %>
</head>
<body style="background-color:#2d3236" data-bs-theme="dark">
<div class="container-sm">
  <%@include file="vendor/navbar.jsp"%>

    <div class="d-flex justify-content-center" style="margin-top: 50px;">
      <form action="/UserServlet" method="post" style="background-color: #2d3236; padding: 25px; border-radius: 5px;" class="shadow-lg">
        <div class="mb-3">
          <label class="form-label">Адрес электронной почты</label>
          <input name="email" type="email" class="form-control" aria-describedby="emailHelp" value="email">
          <%
            Boolean wrongEmail = (Boolean) request.getAttribute("wrongEmail");
            if (wrongEmail != null && !wrongEmail) {
          %>
          <label class="form-label">Адрес электронной почты не зарегистрирован</label>
          <%}%>

          <%
            String enter = (String) request.getAttribute("enter");
            if (enter!=null) {
          %>
          <label class="form-label">Введите адрес электронной почты</label>
          <%
            }
          %>
        </div>
        <div class="mb-3">
          <label class="form-label">Пароль</label>
          <input name="password" type="password" class="form-control" value="password">
          <%
            Boolean wrongPassword = (Boolean) request.getAttribute("wrongPassword");
            if (wrongPassword != null && !wrongPassword) {
          %>
          <label class="form-label">Пароль неверный</label>
          <%
            }
          %>
          <%

            if (enter!=null){
          %>
          <label class="form-label">Введите адрес электронной почты</label>
          <%
            }
          %>
        </div>
        <button type="submit" class="btn btn-primary">Отправить</button>
      </form>
    </div>

</body>
</html>
