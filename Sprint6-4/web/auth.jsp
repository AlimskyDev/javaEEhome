<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>auth</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body style="display: flex; align-items: center">
<form action="/auth"
      method="post"
      class="shadow-lg"
      style="margin: 0 auto;
      width: 300px;
      padding: 20px;
      border-radius: 5px;">
    <%
        String errorName = request.getParameter("errorName");
        if (errorName!=null) {
    %>
        <p>Name not find</p>
    <%
        }
    %>
  <input class="form-control" type="text" name="name" placeholder="insert name ..."> <br>
    <%
        String errorPassword = request.getParameter("errorPassword");
        if (errorPassword!=null) {
    %>
    <p>Password wrong</p>
    <%
        }
    %>
  <input class="form-control" type="password" name="password" placeholder="insert password ..."> <br>
  <button class="btn btn-primary btn-sm">Sign in</button>
</form>
</body>
</html>
