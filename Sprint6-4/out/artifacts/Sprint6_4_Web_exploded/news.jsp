<%@ page import="Classes.Models.NewsModel" %>
<%@ page import="java.util.ArrayList" %>
<br>

<div class="container-sm">

  <%
    ArrayList<NewsModel> news = (ArrayList<NewsModel>) request.getAttribute("news");
    if (news!=null) {
      for (NewsModel n: news) {
  %>

  <h4><%=n.getTitle()%></h4>
  <p><%=n.getContent()%></p>
  <p><b>Post at <%=n.getPostDate()%></b></p>

  <%
      }
    }
  %>
</div>