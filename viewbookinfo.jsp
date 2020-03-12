<html>
<head>
	<style>
		body{
			background: linear-gradient(138deg, rgba(252,251,251,1) 0%, rgba(54,185,196,1) 30%, rgba(180,215,217,1) 44%, rgba(12,209,232,1) 100%);
		}
		table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: black;
  color: white;
}
	</style>
	
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=con.createStatement();
	String str="Select * from BookInfo where status='online'";
	ResultSet rs=stmt.executeQuery(str);             
	out.println("<center><h2>Room Info</h2></center>");
	out.println("<table id='t01' border='2px' wdith='70%'>");
	out.println("<tr><th>Bookid</th>");
	out.println("<th>Class</th>");
	out.println("<th>Checkin</th>");
	out.println("<th>Mode</th>");
	out.println("<th>No.Of.Days</th>");
	out.println("<th>checkout</th>");
	out.println("<th>contact</th>");
    out.println("<th>Room No</th>");
out.println("<th>COST</th>");
out.println("<th>In/Out</th></tr>"); 

	while(rs.next()){
		String x=rs.getString(9);
		
			String y=rs.getString(1);
	out.println("<tr><td>"+y+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+rs.getString(7)+"</td>");
		out.println("<td>"+x+"</td>");
		out.println("<td>"+rs.getString(10)+"</td>");
		
		out.println("<td><a href='checkout.jsp?t1="+x+"&t2="+y+"'> Check Out</a></td><tr>");
		
}
    out.println("</table>");
}
catch(Exception e){
	out.println(e);
}
%>

</body>