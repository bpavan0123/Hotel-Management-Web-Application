<%@page import="java.sql.*"%>
<body>
	<%
	Connection con=null;
	Statement st=null;
	try{

		String tk=request.getParameter("tk");
		String rno=request.getParameter("rno");
		
		session.setAttribute("tk1",tk);

		session.setAttribute("nod1",rno);
	String s1=request.getParameter("t1");
	
	session.setAttribute("nod2",s1);
	String s2=request.getParameter("t2");

	session.setAttribute("nod3",s2);
	String s3=request.getParameter("t3");
	
	
	String s4=request.getParameter("t4");

	session.setAttribute("nod4",s4);

	String s5=request.getParameter("t5");

	session.setAttribute("nod5",s5);

	String s7=request.getParameter("t7");

	String s8=request.getParameter("t8");
	
	
	int cost=1000;
	int y=0;

   y=Integer.parseInt(s5);
   cost=cost*y; 
    session.setAttribute("x",cost);
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:hotel");
	st=con.createStatement();
	String str="insert into BookInfo values('"+s1+"','"+s2+"','"+s3+"','"+s4+"',"+Integer.parseInt(s5)+",'"+s7+"','"+s8+"','online','"+rno+"',"+cost+")";
	st.executeUpdate(str);

str="update Available_Rooms set status='Booked' where room_no="+Integer.parseInt(rno);
st.executeUpdate(str);
	response.sendRedirect("pay.jsp");

	con.close();
	st.close();
}
catch(Exception e){
	out.println(e);
}

%>
</body>
