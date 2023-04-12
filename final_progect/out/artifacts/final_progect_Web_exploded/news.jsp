<%@ page import="Classes.Models.NewsModel" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDateTime" %>
<br>

<div class="container-sm">

  <%
    ArrayList<NewsModel> news = (ArrayList<NewsModel>) request.getAttribute("news");
    if (news!=null) {
      for (NewsModel n: news) {
        int year = n.getNewsPostDateModel().getPost_date().getYear();
        String month = n.getNewsPostDateModel().getPost_date().getMonth().toString();
        int dateOfMonth = n.getNewsPostDateModel().getPost_date().getDayOfMonth();
  %>
  <div class="shadow-lg" style="padding: 15px">
    <h4><%=n.getTitle()%></h4>
    <p><%=n.getContent()%></p>
    <p><b>Post at - <%=dateOfMonth+" "+month+" "+year%></b> <br>
      News in the - <%=n.getNewsCategoriesModel().getName()%>
    </p>
  </div>


  <%
      }
    }
  %>
</div>