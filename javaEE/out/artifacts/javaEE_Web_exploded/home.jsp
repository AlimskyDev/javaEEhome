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
            <div class="col-sm-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Amount</th>
                            <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
                            if (items!=null) {
                                for (Item it: items) {
                                    %>
                                        <tr>
                                            <td><%=it.getId()%></td>
                                            <td><%=it.getName()%></td>
                                            <td><%=it.getPrice()%></td>
                                            <td><%=it.getAmount()%></td>
                                            <td><a href="/DetailsServlet?id=<%=it.getId()%>" class="btn btn-sm btn-info">Details</a></td>
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
