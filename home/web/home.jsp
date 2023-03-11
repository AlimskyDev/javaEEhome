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
            <div class="col-sm-12">
                <h4 class="m-4">Contents of <%=siteName%></h4>
                <table class="table">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Amount</th>
                            <th>Details</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Items> items = (ArrayList<Items>) request.getAttribute("items");
                            if (items!=null) {
                                for ( Items it: items) {
                        %>
                        <tr>
                            <td><%=it.getId()%></td>
                            <td><%=it.getName()%></td>
                            <td><%=it.getPrice()%></td>
                            <td><%=it.getAmount()%></td>
                            <td><a href="/details?id=<%=it.getId()%>" class="btn btn-info btn-sm">Details</a></td>
                            <td><a href="/delete?id=<%=it.getId()%>" class="btn btn-info btn-sm">Delete</a></td>
                        </tr>

                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
