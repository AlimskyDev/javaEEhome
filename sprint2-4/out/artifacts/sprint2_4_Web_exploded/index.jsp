<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.DBManager" %>
<%@ page import="Classes.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body style="background-color: rgba(22,14,47,0.8)">
<div class="container-sm">

    <%@include file="vendor/navbar.jsp"%>
    <%@include file="vendor/modal.jsp"%>

    <button type="button" class="btn btn-dark mt-2 mb-2"
            data-bs-toggle="modal"
            data-bs-target="#Modal">+ Add Task</button>

    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">deadlineDate</th>
            <th scope="col">Done</th>
            <th scope="col">Details</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
            if (tasks!=null) {
                for (Task task: tasks) {
        %>
        <tr>
            <th scope="row"><%=task.getId()%></th>
            <td><%=task.getName()%></td>
            <td><%=task.getDeadlineDate()%></td>

`
            <td>
                <div class="btn-group">
                    <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <%=task.getDone()%>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/doneTask?id=<%=task.getId()%>&done=No">No</a></li>
                        <li><a class="dropdown-item" href="/doneTask?id=<%=task.getId()%>&done=Yes">Yes</a></li>
                    </ul>
                </div>
            </td>

            <td>
                <a href="/detailTask?id=<%=task.getId()%>" class="btn btn-primary btn-sm"> Detail </a>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>