<html>
<head>


	<style>
	body{
		background: rgb(105, 211, 221);
	}
	</style>
</head>


<body  text='blue'>
<form name='f1' method='get' action='alterstaff2.jsp'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	int t1=Integer.parseInt(request.getParameter("t1"));
	session.setAttribute("t1",String.valueOf(t1));
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=cn.createStatement();
          String str="select * from StaffInfo where staffid="+t1;
	ResultSet rs=stmt.executeQuery(str);
	if(rs.next())
	 {
out.println("<center><h3>Staff Info. Modification Page</h3>");	
	out.println("<table><tr><th align='right'>Staff Id : </th>");
out.println("<td><input type='text' name='t1' size=10 value='"+rs.getInt(1)+"' disabled></td></tr>");
	out.println("<tr><th align='right'>Staff Name : </th>");
		out.println("<td><input type='text' name='t2' size=20 value='"+rs.getString(2)+"'></td></tr>");
	out.println("<tr><th align='right'>Designation : </th>");
out.println("<td><input type='text' name='t3' size=20 value='"+rs.getString(3)+"'></td></tr>");
	out.println("<tr><th align='right'>Address : </th>");
out.println("<td><input type='text' name='t4' size=30 value='"+rs.getString(4)+"'></td></tr>");
	out.println("<tr><th align='right'>emailid : </th>");
		out.println("<td><input type='text' name='t5' size=30 value='"+rs.getString(5)+"'></td></tr>");
	out.println("<tr><th align='right'>Phone : </th>");
out.println("<td><input type='text' name='t6' size=20 value='"+rs.getString(6)+"'></td></tr>");
out.println("</table><br><input type='submit' value=' UPDATE  '>");
	 }
	stmt.close();
	cn.close();
          }
         catch(Exception e)
          {

           }
%>
</form>
</body>
</html>