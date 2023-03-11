
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>

</head>
<body>
<%@include file="vendor/navbar.jsp" %>
    <form action="/add" method="post">
        <label>Name </label>
        <input type="text" name="name"> <br><br>
        <label>Price </label>
        <input type="text" name="price"><br><br>
        <label>Amount </label>
        <input type="text" name="amount"><br><br>
        <button>Add item</button>
    </form>
</body>
</html>
