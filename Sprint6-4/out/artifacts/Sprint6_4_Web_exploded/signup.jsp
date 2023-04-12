
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
</head>
<%@include file="vendor/head.jsp"%>
<body style="display: flex; align-items: center">
    <form action="/register"
          method="post"
          class="shadow-lg"
          style="margin: 0 auto;
          width: 300px;
          padding: 20px;
          border-radius: 5px;">
        <%
            String error = request.getParameter("error");

            if (error!=null) {
        %>
        <p>Name taken</p>
        <%
            }
        %>
        <input class="form-control" type="text" name="regName" placeholder="insert name ..."> <br>
        <input class="form-control" type="password" name="regPassword" placeholder="insert password ..."> <br>
        <div class="d-flex justify-content-between">
            <button class="btn btn-primary btn-sm">Register</button>
            <a href="/auth" style="text-decoration: none">Back</a>
        </div>
    </form>
</body>
</html>
