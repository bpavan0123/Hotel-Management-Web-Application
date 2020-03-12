
<%@ page language="java" import="java.sql.*"%>
<% 
Connection conn=null;
Statement stmt=null;
try{
String s1=request.getParameter("YNAME");
String s2=request.getParameter("EMAILID");
String s3=request.getParameter("feed");
String s4=request.getParameter("t2");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 conn=DriverManager.getConnection("jdbc:odbc:hotel"); 
 stmt=conn.createStatement();
String str="insert into feedback values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
stmt.executeUpdate(str);
out.println("<center><img src='fdbk1.jpg'></center>");


}
catch(Exception e)
{
	out.println(e);
}
finally
{
	stmt.close();
	conn.close();
}
%>
