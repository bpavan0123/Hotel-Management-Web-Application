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
	String str="Select * from Customer_Info";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<center><h2>Customer Info</h2>");
	out.println("<table id='t01' border='2px' wdith='70%'");
	out.println("<tr><th>User Name</th>");
	out.println("<th>First Name</th>");
	out.println("<th>Last Name</th>");
	out.println("<th>EMAILID</th>");
	out.println("<th>CONTACT</th>");
	out.println("<th>REGISTRATIONDATE</th>");
	out.println("<th>Gender</th>");
	out.println("<th>Address</th>");
    out.println("<th>Password</th>");
    


	while(rs.next()){
	out.println("<tr><td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+rs.getString(7)+"</td>");
		out.println("<td>"+rs.getString(8)+"</td>");
		out.println("<td>"+rs.getString(9)+"</td>");
		

}
out.println("</table>");
}
catch(Exception e){
	out.println(e);
}
%>

</body>
</html>