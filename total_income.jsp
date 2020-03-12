<body>
<center><h2>Today Total Income is 

	<%@ page import="java.sql.*"%>
	<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=con.createStatement();
	String str="Select sum(cost) from BookInfo where status='online'";
	ResultSet rs=stmt.executeQuery(str);

	if(rs.next())
	{
		out.println(rs.getString(1));
	}
	stmt.close();
	con.close();	

	out.println("</table>");
}
catch(Exception e){
	out.println(e);
}
%>