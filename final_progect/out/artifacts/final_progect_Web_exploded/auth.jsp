<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>auth</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body style="display: flex; align-items: center">
<%
    String errorEmail = request.getParameter("errorEmail");
    String errorPassword = request.getParameter("errorPassword");
    String success = request.getParameter("success");
%>
<form action="/auth"
      method="post"
      class="shadow-lg"
      style="margin: 0 auto;
      width: 300px;
      padding: 20px;
      border-radius: 5px;">
    <%

        if (success!=null) {
    %>
        <p>Registration is successfully</p>
    <%
        }
    %>
    <%
        if (errorEmail!=null) {
    %>
        <p>Email not found</p>
    <%
        }
    %>
  <input required class="form-control" type="text" name="email" placeholder="insert email ..."> <br>
    <%
        if (errorPassword!=null) {
    %>
    <p>Password wrong</p>
    <%
        }
    %>
  <input required class="form-control" type="password" name="password" placeholder="insert password ..."> <br>
  <div class="d-flex justify-content-between">
    <button class="btn btn-primary btn-sm">Sign in</button>
    <a href="register" style="text-decoration: none">Sign up</a>
  </div>
</form>
</body>
</html>
