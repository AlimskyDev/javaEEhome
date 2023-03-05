<%@ page import="java.util.ArrayList" %>
<%@ page import="item.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="vendor/head.jsp"%></head>
<body>
<%@include file="vendor/navbar.jsp" %>
    <div class="container">
        <div class="row mt-5">
            <div class="col-sm-12">
                <%
                    Item item = (Item) request.getAttribute("item");
                    if (item!=null) {
                        %>
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Name <%=item.getName()%></h5>
                                <p class="card-text"><%=item.getPrice()%> USD</p>
                                <a href="#" class="btn btn-primary btn-sm">Edit</a>
                            </div>
                        </div>
                        <%
                    }
                %>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
