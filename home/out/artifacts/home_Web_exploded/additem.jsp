<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.javee.db.Items" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <%@include file="vendor/head.jsp" %>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>
    <div class="container">
        <div class="row-mt5">
            <div class="col-sm-6 offset-3">
                <%
                    String success = request.getParameter("success");
                    if (success!=null) {
                %>
                <div class="alert alert-success alert-dismissible fade show mb-10" role="alert">
                    <strong>Item added successfully!</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%
                    }
                %>
                <form action="/additem" method="post">
                    <div class="form-group">
                        <div class="form-group">
                            <label>Name </label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Price </label>
                            <input type="number" name="price" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Amount</label>
                            <input type="number" name="amount" class="form-control">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-success">Add item</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
