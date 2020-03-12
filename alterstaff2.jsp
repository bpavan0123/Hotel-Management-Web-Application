<html>
<head>


	<style>
	body{
		background: rgb(105, 211, 221);
	}
	</style>
</head>

<body text='blue'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	int t1=Integer.parseInt((String)session.getAttribute("t1"));
	String t2=request.getParameter("t2");
	String t3=request.getParameter("t3");
	String t4=request.getParameter("t4");
	String t5=request.getParameter("t5");
	String t6=request.getParameter("t6");

	if(t2.length()!=0 && t3.length()!=0 && t4.length()!=0 && t5.length()!=0 && t6.length()!=0)
	 {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=cn.createStatement();

String str="update StaffInfo set staffname='"+t2+"',designation='"+t3+"',address='"+t4+"',emailid='"+t5+"',contact='"+t6+"' where staffid="+t1;
	stmt.executeUpdate(str);
	stmt.close();
	cn.close();
  out.println(" <center> <b>Staff Information Updated Successfully...</b>");
	 }
	else
	 {
     out.println("<b>InComplete Staff Details to Update...</b>");
	 }
       }
      catch(Exception e)
        { 
	out.println("Error : "+e);
        }
%>
</body>
</html>