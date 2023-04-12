<%@ page import="Classes.Models.UsersModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<%@include file="vendor/head.jsp"%>
<body style="display: flex; align-items: center">
    <form action="/editProfile"
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
        <%
            UsersModel user = (UsersModel) request.getSession().getAttribute("currentUser");
            String role1 = "admin";
            String role2 = "user";
            if (user.getRole_id()==2){
                role1 = "user";
                role2 = "admin";
            }
        %>
        You email
        <input style="border: none; background-color: white; width: 100%" readonly name="regEmail" value="<%=user.getEmail()%>">
        <br>
        <br>
        <p>insert password</p>
        <input required class="form-control" type="text" name="regPassword" value="<%=user.getPassword()%>"> <br>
        <p>Insert name</p>
        <input required class="form-control" type="text" name="regName" value="<%=user.getFull_name()%>"> <br>
        <%
            if (user.getRole_id()==1) {
        %>
        <p>Select option</p>
        <select required class="form-control" name="regRole_id">
            <option><%=role1%></option>
            <option><%=role2%></option>
        </select>
        <%
            }
        %>
        <br>
        <div class="d-flex justify-content-between">
            <button class="btn btn-primary btn-sm">Edit profile</button>
            <a href="/" style="text-decoration: none">Back</a>
        </div>
    </form>
</body>
</html>
