<%@ page import="Classes.Task" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16.03.2023
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
  <%@include file="vendor/head.jsp"%>
</head>
<body style="background-color: rgba(22,14,47,0.8)">
<div class="container-sm">
  <%@include file="vendor/navbar.jsp"%>
        <div class="container-sm col-6 ">
            <%
                Task task = (Task) request.getAttribute("task");
                String id = request.getParameter("id");
            %>

          <form action="/deleteChangeTask" method="post" data-bs-theme="dark">
              <input type="hidden" value="<%=task.getId()%>" name="id">
              <div class="mb-3">
                <label class="col-form-label" style="color: white">Name:</label>
                <input type="text"
                       class="form-control"
                       name="name"
                       value="<%=task.getName()%>"
                       style="color: black">
              </div>

              <div class="mb-3">
                <label class="col-form-label" style="color: white">Description:</label>
                <textarea class="form-control"
                          name="descr"
                          style="color: black"><%=task.getDescription()%></textarea>
              </div>

              <div class="mb-3">
                <label class="col-form-label" style="color: white">Done:</label>
                  <input type="text"
                         class="form-control"
                         name="done"
                         value="<%=task.getDone()%>"
                         style="color: black">
              </div>

              <div class="mb-3">
                <label class="col-form-label" style="color: white">Dead line:</label>
                <input type="text"
                       value="<%=task.getDeadlineDate()%>"
                       class="form-control"
                       name="date"
                       onfocus="(this.type='date')"
                       onblur="(this.type='text')">
              </div>
              <div class="modal-footer">
                <button class="btn btn-danger btn-sm m-2" name="action" value="change">Change</button>
                <button class="btn btn-danger btn-sm m-2" name="action" value="delete">Delete</button>
              </div>
          </form>
        </div>
    </div>
</body>
</html>
