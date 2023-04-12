<%@ page import="kz.javee.db.Items" %>
<%@ page import="kz.javee.db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
  <%@include file="vendor/head.jsp" %>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>

<%
    Items item = (Items) request.getAttribute("item");
    String id = request.getParameter("id");
%>
<%--    <div class="alert alert-success alert-dismissible fade show mb-10" role="alert">--%>
<%--      <strong>Item deleted successfully!</strong>--%>
<%--      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>--%>
<%--    </div>--%>

    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> You are sure - </h5>
        <p class="card-text"> Will be removed - <%=item.getName()%> <%=item.getPrice()%> <%=item.getAmount()%></p>
        <form action="/delete?id=<%=id%>" method="post">
          <button class="btn btn-primary btn-sm">Delete</button>
        </form>
        <a href="/home" class="btn btn-primary btn-sm">No, back to main page</a>
      </div>
    </div>
</body>
</html>
