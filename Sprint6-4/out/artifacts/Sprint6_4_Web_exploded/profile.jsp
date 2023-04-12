<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 31.03.2023
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body style="display: flex; align-items: center">
<form action="/changePassword"
      method="post"
      class="shadow-lg"
      style="margin: 0 auto;
      width: 300px;
      padding: 20px;
      border-radius: 5px;">
    <%
        String error1 = request.getParameter("error1");
        String error2 = request.getParameter("error2");
        String success = request.getParameter("success");
    %>
    <% if (error1!=null) { %>
        <p>Wrong password</p>
    <% } %>
    <% if (success!=null) { %>
    <p>Password changed successfully</p>
    <% } %>
    <input class="form-control" type="password" name="current_password" placeholder="insert current password"> <br>
    <% if (error2!=null) { %>
    <p>Wrong re-password</p>
    <% } %>
    <input class="form-control" type="password" name="new_password" placeholder="insert new password"> <br>
    <input class="form-control" type="password" name="re_new_password" placeholder="Retype new password"> <br>
    <div class="d-flex justify-content-between">
        <button class="btn btn-primary btn-sm">Change password</button>
        <a href="/home" style="text-decoration: none">Back</a>
    </div>
</form>
</body>
</html>
