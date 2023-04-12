<%@ page import="java.util.ArrayList" %>
<%@ page import="classes.models.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <%@include file="vendor/head.jsp" %>
</head>
<body style="background-color:#2d3236" data-bs-theme="dark">
<div class="container-sm ">
<%@include file="vendor/navbar.jsp" %>
<%@include file="vendor/greetings.jsp" %>


<div class="d-flex justify-content-evenly" style="display: flex; flex-wrap: wrap">
        <%
            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
            if (items!=null) {
                for (Item it : items) {
        %>
        <div class="card shadow" style="width: 18rem; margin-bottom: 20px">
            <div class="card-body">
                <h5 class="card-title" style="text-align: center"><%=it.getName()%></h5>
                <h6 class="card-text" style="text-align: center"><%=it.getPrice()%></h6>
                <p class="card-text" style="text-align: center"><%=it.getDescription()%></p>
                <a href="#" class="btn btn-primary btn-sm" style="display: block">Pay</a>
            </div>
        </div>
        <%
                }
            }
        %>
</div>
</body>
</html>