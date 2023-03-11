<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.javee.db.Items" %>
<%@ page import="java.util.List" %>
<%@ page import="kz.javee.db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <%@include file="vendor/head.jsp" %>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>
    <div class="container">
        <div class="row-mt5">
            <div class="col-sm-12">
                <div class="card">
                    <%
                        Items item = (Items) request.getAttribute("item");
                        if (item!=null) {
                    %>
                    <div class="card-body">
                        <h5 class="card-title"> Name - <%=item.getName()%></h5>
                        <p class="card-text"> Price - <%=item.getPrice()%></p>
                        <p class="card-text">Amount - <%=item.getAmount()%></p>
                        <a href="#" class="btn btn-primary btn-sm">Edit</a>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
