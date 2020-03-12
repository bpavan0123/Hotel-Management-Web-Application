<%@ page import="java.sql.*"%>
<%
try{
	String t1=request.getParameter("uname").trim();
	String t2=request.getParameter("psw").trim();

	if(t2.length()!=0)
	{
		if(t1.length()!=0){
		if(t1.equals("Admin") && t2.equals("Admin"))
		 {
		             session.setAttribute("usr","Administrator");
		             response.sendRedirect("AdminForm.jsp");
		 }else if(t1.equals("receptionist") && t2.equals("receptionist"))
		 {
		 	session.setAttribute("usr","receptionist");
		 	response.sendRedirect("recepform.jsp");
		 }
		
		else{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
		Statement stmt=con.createStatement();
		String qry="Select  uname,pwd from Customer_Info where uname='"+t1+"' and pwd='"+t2+"'";
		ResultSet rs=stmt.executeQuery(qry);
		int c=0;
		if(rs.next()){
		c++;
		session.setAttribute("uid",rs.getString(1));
		session.setAttribute("pass",rs.getString(2));
	}
	stmt.close();
	con.close();
	if(c==0)
	{
		session.setAttribute("msg","InValid UserName/PassWord are Entered... ");
		response.sendRedirect("error.jsp");
	}
	else
	{
		response.sendRedirect("fram.jsp");
	}
	}
	}
	else{
  session.setAttribute("msg","PassWord is Not Specified...");
	           response.sendRedirect("error.jsp");

	}
	}
else
	 {
	           session.setAttribute("msg","UserName is Not Specified...");
	           response.sendRedirect("error.jsp");
	 }
      }
	catch(Exception e)
      {
	           session.setAttribute("msg","Error in Validating the Page...");
	           response.sendRedirect("error.jsp");
      }
      %>