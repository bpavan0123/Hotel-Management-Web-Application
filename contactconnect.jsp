
<%@ page language="java" import="java.sql.*"%>
<% 
Connection conn=null;
Statement stmt=null;
try{
String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("email");
String s4=request.getParameter("phone");
String s5=request.getParameter("msg");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 conn=DriverManager.getConnection("jdbc:odbc:hotel"); 
 stmt=conn.createStatement();
String str="insert into contact values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
stmt.executeUpdate(str);
out.println("<center><img src='contact.jpg'></center>");
out.println("<a href='home.html'><center><button style='width:70px;height:40px;    background-color: rgb(97, 212, 122);'>back</button></center></a>");


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
