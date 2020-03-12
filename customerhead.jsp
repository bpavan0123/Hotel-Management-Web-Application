<%@ page import="java.sql.*"%>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="home.css"  type="text/css">

		
</head>
<body >
	<%
	 response.setHeader("Cache-Control","no-cache");
	 response.setHeader("Cache-Control","no-store");
	 response.setHeader("Pragma","no-cache");
	 response.setDateHeader("Expire",0);
	 String s1=(String)session.getAttribute("uid");
	 if(s1==null){
		response.sendRedirect("http://localhost:8088/Hotel_Management/logout.jsp");
	 }
	 %>
	<div class="main">
		<ul class="list">
				<li><a href="book.jsp" target="f2">BOOK</a></li>
<li><a href="services.jsp" target="f2">SERVICES</a></li>
<li><a href="feedback.jsp" target="f2">FEEDBACK</a></li>
<li><% out.println("<b >"+session.getAttribute("uid")+"</b>"); %><a href="home.html" target="_top">LOGOUT</a> </li>

</ul>        
</div>
</body>
</html>

