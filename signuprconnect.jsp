<html>
<head>
<title>Sign-Up</title>
<style>


</style>
</head>
<%@ page import="java.sql.*"%>
<body bgcolor="LIGHTBLUE">
<center>

<%

	Connection con=null;
	Statement st=null;
	try
	{

	String s1=request.getParameter("uname");
	String s2=request.getParameter("fname");
	String s3=request.getParameter("lname");
	String s4=request.getParameter("gmail");
	String s5=request.getParameter("mobile");
	String s6=(String)session.getAttribute("dop");
	String s7=request.getParameter("gen");
	String s8=request.getParameter("address");
	String s9=request.getParameter("pwd");
	String s10=request.getParameter("cpwd");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:hotel");

	st=con.createStatement();

	String qry="insert into Customer_Info values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','offline')";

	st.executeUpdate(qry);
	out.println("<h2>Record stored successfully");
	out.println("<br><a href='signup.jsp'>Click Here</a> to back");
	}
	catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		st.close();
		con.close();
	}
%>
</body>