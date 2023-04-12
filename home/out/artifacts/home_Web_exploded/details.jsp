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
                        <form action="/EditItemServlet" method="post">
                            <input type="hidden" value="<%=item.getId()%>" name="i_id">
                            <p><%=item.getId()%></p>
<%--                            <p> <input type="text" value="<%=item.getName()%>" name="i_name"></p>--%>
                            <select name="i_name">
                                <option <%=item.getName().equals("iphone6")?"selected":""%>>iphone6</option>
                                <option <%=item.getName().equals("iphone7")?"selected":""%>>iphone7</option>
                                <option <%=item.getName().equals("iphone8")?"selected":""%>>iphone8</option>
                                <option <%=item.getName().equals("iphone13")?"selected":""%>>iphone13</option>
                                <option <%=item.getName().equals("iphone4")?"selected":""%>>iphone4</option>
                                <option <%=item.getName().equals("mobile")?"selected":""%>>mobile</option>
                            </select>
                            <p> <input type="text" value="<%=item.getPrice()%>" name="i_price"></p>
                            <p> <input type="text" value="<%=item.getAmount()%>" name="i_amount"></p>
    <%--                        <h5 class="card-title"> Name - <%=item.getName()%></h5>--%>
    <%--                        <p class="card-text"> Price - <%=item.getPrice()%></p>--%>
    <%--                        <p class="card-text">Amount - <%=item.getAmount()%></p>--%>
                            <p> <button  class="btn btn-primary btn-sm">Edit</button></p>
                        </form>
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
