
<%@ page import="java.sql.*"%>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 250px;
  background-color: black;
}

li a {
  display: block;
  color:white;
  padding: 8px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:green;
  color: white;
}
</style>
</head>
<body bgcolor="white">

<%
     out.println("<b style='color:white'>Welcome  "+session.getAttribute("uid")+"</b>");
%>
<ul>
  <li><a href="services.jsp" target="f3">services</a></li>
<li><a href="book.jsp" target="f3">book</a></li>
<li><a href="feedback.jsp" target="f3">feed back</a></li>
<li><a href="home.html" target="logout.jsp"> logout</a></li>
</ul>

</body>
</html>
