
<body><div style="display: flex;">
	<div><img src="bukimg2.jpg"></div>
	
	<center><form action="bookconnect.jsp">
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
	no=1001;
}
stmt.close();
cn.close();
session.setAttribute("t1",String.valueOf(no));
%>
		<u><h1 style="color: black;font-size: 50px;margin: 0px">Book your room</h1></u>
	<div style="width: 60%;height: 70%;background-image: linear-gradient(-90deg,#00adff96,#0080008f);padding-left: 100px;padding-right: 100px">
<table style="border-spacing: 7px;margin-top: 5px;font-size: 20px;">
<tr>
	<td>userid</td>
	<%
	out.println("<td><input type='text' name='t1' value='"+no+"'></td>");
%>
</tr><br>
<tr>
<td>Class</td><td><select name="t2">
<option>AC</option>
<option>General</option>
</select>
</td>
</tr>
<tr>
<td>check in</td>
<td><input type="text" placeholder="DD/MM/YYYY" name="t3"></td>
</tr><br>
<tr>
<td>mode</td><td><select name="t4">
<option>Single Room</option>
<option>Double Room</option>
<option>Tripple Room</option>
</select>
</td>
</tr>
<tr>
<td>No.of days</td>
<td><input type="text" name="t5"></td>
</tr>
<tr>
<td>No.of nights</td>
<td><input type="text" name="t6"></td>
</tr>

<tr>
<td>check out</td>
<td><input type="text"placeholder="DD/MM/YYYY" name="t7"></td>
</tr>
<tr>
	<td>contact number</td>
	<td><input type="text" name="t8"></td>
</tr>
</table>
</div>
<input type="submit" value="submit" style="background-color:#0a6d35;padding:7px;color: white;border-radius: 10px;margin: 15px;cursor: pointer;">


</form>
</center>
</div>

</body>
