<body>
	<%@ page import="java.sql.*"%>
	<%
	try{
	int t1=Integer.parseInt((String)session.getAttribute("t1"));
	String t2=request.getParameter("t2");
	String t3=request.getParameter("t3");
	String t4=request.getParameter("t4");
	String t5=request.getParameter("t5");
	String t6=request.getParameter("t6");
	String t7=(String)session.getAttribute("t7");
	if(t2.length()!=0 && t3.length()!=0 && t4.length()!=0 && t5.length()!=0 && t6.length()!=0){

		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cn=DriverManager.getConnection("jdbc:odbc:hotel");
		Statement stmt=cn.createStatement();
		String qry="insert into Staffinfo values('"+String.valueOf(t1)+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','active')";
		stmt.executeUpdate(qry);
		out.println("<h1>staffmember add successfully</h1>");
		stmt.close();
		cn.close();
}
else{
	out.println("incomplete staff info");
}
}
catch(Exception e){
	out.println(e);
}
%>
</body>