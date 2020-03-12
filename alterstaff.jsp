<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
	<meta http-equiv='X-UA-Compatible' content='IE=edge'>
	<style>
	  *
		{
			background: rgb(105, 211, 221) ;
		}
	</style>
</head>


<body >
<form name='f1' method='get' action='alterstaff1.jsp'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=cn.createStatement();
          String str="select staffid from StaffInfo where Status='Active'";	
	ResultSet rs=stmt.executeQuery(str);
out.println("<center><h3>Staff Info. Modification Page</h3>");
	out.println("<br><b>Select the Staff Id to Modify : </b>");
	out.println("<select name='t1'>");
	while(rs.next())
	 {
	out.println("<option>"+rs.getString(1)+"</option>");
	 }
	out.println("</select><input type='submit' value='  Show  '>");
      }
     catch(Exception e)
      {

       }
%>
</form>
</body>