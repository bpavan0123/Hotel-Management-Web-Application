

	<%@page import="java.sql.*"%>
	<%@page import="java.util.*"%>
<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
	out.println("connect");
}
catch(Exception e){
out.println(e);
}
%>	

	

