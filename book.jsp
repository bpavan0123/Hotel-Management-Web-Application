<!DOCTYPE html>
<html>
<head>
	<style>
		body{
			background-image: url("//triple.jpg");
			opacity: 0.9;
			background-image: linear-gradient(to right top, #6684fc, #5792fe, #4f9efe, #50a9fb, #5ab3f7, #72bbf6, #87c3f4, #9bcbf3, #b5d4f4, #ccdef5, #e1e9f6, #f3f4f6);
			
		}
		form {border: 1px  #2711ec87;width:40%;    background-color: transparent;}
		
		.container {
  padding: 50px;
  margin-top: 10px;
}

	</style>
</head>
<body >
	<center><form action="bookconnect.jsp">
			<div class="container">
<table border=1 >
<tr>
	<th> Room Number</th>
	<th> Room Type</th>
	<th> Availability</th>
	<th>Action</th>
</td>

		<%@ page import="java.sql.*"%>
		<%
    Connection cn=null;
     Statement stmt=null;
     int no=0;
    try
     {

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn=DriverManager.getConnection("jdbc:odbc:hotel");
	stmt=cn.createStatement();
	String qry="Select * from Available_Rooms where status='Available'";
	ResultSet rs=stmt.executeQuery(qry);

	while(rs.next())
	{
		String x=rs.getString(1);
		String z=rs.getString(2);
		String y=rs.getString(3);
		out.println("<tr><td>"+x+"</td>");
		out.println("<td>"+z+"</td>");
		out.println("<td>"+y+"</td>");
		if(y.equals("Available"))
			out.println("<td><a href='book1.jsp?t1="+x+"&tk="+z+"'>Book</a></tr>");
		else
			out.println("<td>Already Booked</td></tr>");
	}	

	}
	catch(Exception e)
	{
		out.println(e);
	}
	
%>
</body>
</html>