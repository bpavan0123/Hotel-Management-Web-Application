<!DOCTYPE html>
<html>
<head>
	<style>
		body{
			background-image: url("triple.jpg");
			opacity: 0.9;
			
		}
		form {border: 10px solid #2711ec87;width:40%;    background-color: #6fa6dd;}
		
		.container {
  padding: 50px;
  margin-top: 10px;
}

	</style>
</head>
<body >
	<center><form action="bookconnect.jsp">
			<div class="container">
		<%@ page import="java.sql.*"%>
		<%
    Connection cn=null;
     Statement stmt=null;
     int no=0;
    try
     {

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn=DriverManager.getConnection("jdbc:odbc:hotel");
	stmt=cn.createStatement();
	String qry="Select max(bookid) from BookInfo";
	ResultSet rs=stmt.executeQuery(qry);
	if(rs.next())
	no=Integer.parseInt(rs.getString(1))+1;
}
catch(Exception e)
{
	no=101;
}
stmt.close();
cn.close();
session.setAttribute("t1",String.valueOf(no));
%>
		<u><h1 style="color: black;font-size: 50px;margin: 0px">Book your Room</h1></u>
	<div style="width: 60%;height: 70%;background-color:transparent;color:white;margin: 10px;">
<table style="border-spacing: 7px;margin-top: 5px;font-size: 20px; color: black;">
<tr>
	<th>Room Number</th>
	<%
		String s1=request.getParameter("t1");
		String s2=request.getParameter("tk");
	%>
	<td><input type='text' name=rno value=<%=s1%> readonly></td>
<tr>
	<td>User Id</td>
	<%
	out.println("<td><input type='text' name='t1' value='"+no+"' readonly></td>");

%>
</tr><br>
<tr>
<td>Class</td><td size="10px"><select name="t2" >
<option>AC</option>
<option>General</option>
</select>
</td>
</tr>
<tr>
<td>check In</td>
<td><input type="date" placeholder="DD/MM/YYYY" name="t3"></td>
</tr><br>
<tr>
	<td>Mode</td>
	<%
	out.println("<td><input type='text' name='t4' value='"+s2+"' readonly></td>");

%>
</tr><br>
<tr>
<td>No Of Days</td>
<td><input type="text" name="t5" ></td>
</tr>

<tr>
<td>Check Out</td>
<td><input type="date"placeholder="DD/MM/YYYY" name="t7"></td>
</tr>
<tr>
	<td>Contact No</td>
	<td><input type="text" name="t8"></td>
</tr>

</table>
</div>
<input type="submit" value="submit" style="background-color:#f3b711;padding:10px 10px;color: white;border-radius: 10px;margin: 15px;cursor: pointer;font-size: 30px;">
			</div>
</form>


</center>
</body>
</html>