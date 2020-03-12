<body>



	
	<%@ page import="java.sql.*"%>
	<%
	try
	{
	
	String s1=request.getParameter("t1");

	String s2=request.getParameter("t2");


	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=con.createStatement();
	String str="delete from BookInfo  where bookid='"+s2+"'";
	
	stmt.executeUpdate(str);

	str="update Available_Rooms set status='Available' where room_no="+Integer.parseInt(s1);
	
	stmt.executeUpdate(str);
	

	out.println("<center><h1>Checkout Process Completed Successfully");

	stmt.close();
	con.close();

	}
	catch(Exception e)
	{
		out.println(e);
	}

%>

</body>