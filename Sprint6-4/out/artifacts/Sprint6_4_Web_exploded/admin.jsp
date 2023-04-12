<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Classes.Models.NewsModel" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
  <title>Admin panel</title>
  <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp" %>
  <div class="container-sm">

      <button style="margin:10 0" type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <%=language.getAdminAddNewsBtn()%>
      </button>

      <table class="table table-success table-striped">
        <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col"><%=language.getAdminTableHeadTitle()%></th>
          <th scope="col"><%=language.getAdminTableHeadPosted()%></th>
          <th scope="col"><%=language.getAdminTableHeadLanguage()%></th>
          <th scope="col"><%=language.getAdminTableHeadDetails()%></th>
        </tr>
        </thead>
        <tbody>
          <%
            ArrayList<NewsModel> newsAll = (ArrayList<NewsModel>) request.getAttribute("newsAll");
            if (newsAll!=null) {
              for (NewsModel n: newsAll) {
                %>
                  <tr>
                    <th scope="row"><%=n.getId()%></th>
                    <td style="max-width: 350px"> <%=n.getTitle()%></td>
                    <td><%=n.getPostDate()%></td>
                    <td>
                      <%
                        if (n.getLanguageId()==1) {
                      %>
                      <%=language.getAdminTableLanguageEn()%>
                      <%
                        } else if (n.getLanguageId()==2) {
                      %>
                      <%=language.getAdminTableLanguageRu()%>
                      <%
                        }
                      %>
                    </td>
                    <td><a href="/detail?id=<%=n.getId()%>&language=<%=language.getLanguage()%>" class="btn btn-primary btn-sm"><%=language.getAdminTableDetailsBtn()%></a> </td>
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
        <h1 class="modal-title fs-5" id="exampleModalLabel"><%=language.getAdminModalTitle()%></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <form  action="/addNewNews?language=<%=language.getLanguage()%>" method="post">

          <input required type="text" class="form-control" placeholder="<%=language.getAdminModalInputTitle()%>" name="title">
          <br>
          <textarea required  class="form-control" placeholder="<%=language.getAdminModalInputContent()%>" name="content"></textarea>
          <br>
          <select required name="lang" class="form-select" id="inputGroupSelect01" >
            <option></option>
            <option value="1" ><%=language.getAdminModalInputChangeLanguageOptionEn()%></option>
            <option value="2" ><%=language.getAdminModalInputChangeLanguageOptionRu()%></option>
          </select>
          <br>
          <input required  type="date" class="form-control" placeholder="date" name="date">
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><%=language.getAdminModalCloseBtn()%></button>
            <button type="submit" class="btn btn-primary"><%=language.getAdminModalSubmitBtn()%></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

