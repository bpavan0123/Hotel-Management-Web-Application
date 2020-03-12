<html>
<%@ page import="java.sql.*"%>
<body>
<%
try
{
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");

response.setHeader("Pragma","no-cache");        
response.setDateHeader("Expire", 0);

String s1=request.getParameter("npwd1").trim();
String s2=request.getParameter("uname").trim();
String s3=request.getParameter("email").trim();



Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

Connection con=DriverManager.getConnection("jdbc:odbc:Hotel");

Statement st=con.createStatement();

String qry="update Customer_Info set pwd='"+s1+"', cpwd='"+s1+"' where uname='"+s2+"'" ;
st.executeUpdate(qry);
out.println("Password Updated Successfully");

st.close();

con.close();

}

catch(Exception e)

{
out.println(e);

}

%>
<br>

<a href="log.html">To Login</a>
 

</body>

</html>