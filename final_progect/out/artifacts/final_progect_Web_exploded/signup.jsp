
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
        <p>Insert email</p>
        <input required class="form-control" type="text" name="regEmail" > <br>
        <p>insert password</p>
        <input required class="form-control" type="password" name="regPassword"> <br>
        <p>Insert name</p>
        <input required class="form-control" type="text" name="regName" > <br>
        <p>Select option</p>
        <select required class="form-control" name="regRole_id" >
            <option>user</option>
            <option>admin</option>
        </select> <br>
        <div class="d-flex justify-content-between">
            <button class="btn btn-primary btn-sm">Register</button>
            <a href="/auth" style="text-decoration: none">Back</a>
        </div>
    </form>
</body>
</html>
