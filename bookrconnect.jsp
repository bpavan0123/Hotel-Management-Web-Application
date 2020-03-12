<%@page import="java.sql.*"%>
<body>
	<%
	Connection con=null;
	Statement st=null;
	try{
	String s1=request.getParameter("t1");
	String s2=request.getParameter("t2");
	String s3=request.getParameter("t3");
	String s4=request.getParameter("t4");
	String s5=request.getParameter("t5");
	String s6=request.getParameter("t6");
	String s7=request.getParameter("t7");
	String s8=request.getParameter("t8");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:hotel");
	st=con.createStatement();
	String str="insert into BookInfo values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','offline')";
	st.executeUpdate(str);
	out.println("Record added Successfully");


}
catch(Exception e){
	out.println(e);
}

finally{
	con.close();
	st.close();
}%>
</body>
