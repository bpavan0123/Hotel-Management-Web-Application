<!DOCTYPE html>
<html>
<head>
	<style>
		body{
			
			background:rgba(54,185,196,1);

		}
	</style>
</head>

<body>
	<center>
	<form name="f1" method="post" action="addstaff1.jsp">
		<center><h2>ADD NEW STAFF</h2></center>
		<%@page import="java.sql.*,java.text.*"%>
		<%
		int no=0;
		try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
		Statement st=con.createStatement();
		String str="Select max(staffid) from StaffInfo";
		ResultSet rs=st.executeQuery(str);
		if(rs.next())
		no=Integer.parseInt(rs.getString(1))+1;
	}
	    catch(Exception e)
      {
	no=1001;
      }

      session.setAttribute("t1",String.valueOf(no));
%>


	
	<div style="width: 40%;height: 80%;  
	background: linear-gradient(138deg, rgba(252,251,251,1) 0%, rgba(54,185,196,1) 30%, rgba(180,215,217,1) 44%, rgba(12,209,232,1) 100%);">
<table style="border-spacing: 7px;margin-top: 2px;font-size: 20px;">
		<tr><td>staffid:</td>
			<%
out.println("<td><input type='text' name='t1' size=10 value='"+no+"' disabled></td>");
%>
   </tr>
			<tr><td>staffname:</td>
				<td><input type="text" name="t2"></td></tr>
				<tr><td>designation</td>
					<td><input type="text" name="t3"></td></tr>
					<tr><td>Address</td>
						<td><input type="textarea" name="t4"></td>
					</tr>

					<tr><td>Email id:</td>
						<td><input type="text" name="t5"></td></tr>

					<tr><td>Contact:</td>
						<td><input type="text" name="t6"></td></tr>
					<tr><td>Registration date</td>
						<%
						SimpleDateFormat sd=new SimpleDateFormat("dd-MMM-YYYY");
						String str=sd.format(new java.util.Date()).toString();
						session.setAttribute("t7",str);
						  out.println("<td><input type='text' name='t7'value='"+str+"' readonly></td>");
%>
					</tr>
				</table>
				<input type="submit" value="submit" style="background-color:#0a6d35;padding:7px;color: white;border-radius: 10px;margin: 15px;cursor: pointer;">
			</div>
			</form>
			</center>
		</body>

</html>