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
                            <td>
                                <a href="/homeDelete?id=<%=it.getId()%>"
                                   class="btn btn-info btn-sm" data-bs-toggle="modal"
                                   data-bs-target="#deleteModal">Delete</a>
                            </td>
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




<%
    Items item = (Items) request.getAttribute("item");
    String id = request.getParameter("id");
%>
<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">You are sure?</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body">
                Will be removed -
                <%=item.getName()%>, <%=item.getPrice()%>, <%=item.getAmount()%>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                <form action="/homeDelete?id=<%=id%>" method="post">
                    <button class="btn btn-primary btn-sm">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>
</html>