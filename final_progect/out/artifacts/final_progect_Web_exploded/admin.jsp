<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Classes.Models.NewsModel" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDateTime" %>

<html>
<head>
  <title>Admin panel</title>
  <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>
  <div class="container-sm">

      <button style="margin:10 0" type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Add new news
      </button>

      <table class="table table-success table-striped">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Posted</th>
            <th scope="col">Category</th>
            <th scope="col">Language</th>
            <th scope="col">LanguageCode</th>
            <th scope="col">Details</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
          </tr>
        </thead>
        <tbody>
        <%
          ArrayList<NewsModel> news = (ArrayList<NewsModel>) request.getAttribute("newsAll");
          if (news!=null) {
            for (NewsModel n: news) {
              LocalDateTime date = n.getNewsPostDateModel().getPost_date();
        %>

         <tr>
            <th scope="row"><%=n.getId()%></th>
            <td style="max-width: 350px"> <%=n.getTitle()%></td>
            <td><%=date%></td>
            <td><%=n.getNewsCategoriesModel().getName()%></td>
            <td><%=n.getNewsLanguagesModel().getName()%></td>
            <td><%=n.getNewsLanguagesModel().getCode()%></td>
            <td><a href="/detail?id=<%=n.getId()%>" class="btn btn-primary btn-sm">Details</a> </td>
            <td><a href="/editNews?id=<%=n.getId()%>" class="btn btn-primary btn-sm">Edit</a> </td>
            <td><a href="/deleteNews?id=<%=n.getId()%>" class="btn btn-danger btn-sm">Delete</a> </td>
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

<!-- Модальное окно -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <form  action="/addNewNews?language=..." method="post">

          <p>Title</p>
          <input required type="text" class="form-control" placeholder="" name="title">
          <br>

          <p>Content</p>
          <textarea required  class="form-control" placeholder="" name="content"></textarea>
          <br>

          <p>Language</p>
          <select required name="lang" class="form-select">
            <option></option>
            <option value="english">english</option>
            <option value="russian">russian</option>
          </select>
          <br>

          <p>Category</p>
          <select required name="category" class="form-select">
            <option></option>
            <option value="City">City</option>
            <option value="State">State</option>
          </select>
          <br>

<%--          <p>Date</p>--%>
<%--          <input required  type="date" class="form-control" placeholder="date" name="date">--%>

          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

