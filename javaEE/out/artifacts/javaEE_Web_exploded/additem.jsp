<%@ page import="java.util.ArrayList" %>
<%@ page import="item.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-6 offset-3">
                <%
                    String success = request.getParameter("success");
                    if (success!=null) {
                %>
                <div class="alert alert-success" role="alert">
                    Item added successfully!
                </div>
                <%
                    }
                %>

                <form action="/additem" method="post">
                    <div class="form-group">
                        <label>Name </label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Amount </label>
                        <input type="number" name="amount" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Price </label>
                        <input type="number" name="price" class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-succes">Add item</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
