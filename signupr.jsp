<html>
<head>
<title>Sign-Up</title>
<style>

body
{
	background: linear-gradient(138deg, rgba(252,251,251,1) 0%, rgba(54,185,196,1) 30%, rgba(180,215,217,1) 44%, rgba(12,209,232,1) 100%);
}
</style>
</head>
<body bgcolor="LIGHTBLUE">
	<%@ page language='java' import='java.sql.*,java.text.*' %>
<%
    Connection cn=null;
     Statement stmt=null;
     int no=0;
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	cn=DriverManager.getConnection("jdbc:odbc:hotel");
	stmt=cn.createStatement();
     }
    catch(Exception e)
      {
	out.println(e);
      }
%>
	<center><form action="signuprconnect.jsp" method="POST">
		
		
			<font size="7"><b><u>Sign Up</u></b></font></br></br>
			<table border="0" cellspacing="5px" cellpadding="5px" align="center" >
				
				<tr>
					<td><b>USER NAME:</b></td>
					<td><input type="text" name="uname" placeholder="username" style="font-size: 1.2em" ></td>
				</tr>
				<tr>
					<td><b>FIRST NAME:</b></td>
					<td><input type="text" name="fname"  style="font-size: 1.2em" ></td>
				</tr>
				<tr>
					<td><b>LAST NAME:</b></td>
					<td><input type="text" name="lname"  style="font-size: 1.2em" ></td>
				</tr>
				<tr>
					<td><b>GMAIL:</b></td>
					<td><input type="text" name="gmail" style="font-size: 1.2em" ></td>
				</tr>
				<tr>
					<td><b>CONTACT NO:</b></td>
					<td><input type="text" name="mobile" style="font-size: 1.2em" ></td>
				</tr>
				<tr>
					<td><b>DATE-OF-REGISTRATION</b></td>
					<!--<td><input type="text" name="dor" style="font-size: 1.2em" placeholder="dd/mm/yyyy" ></td>-->
					<%
					SimpleDateFormat dt=new SimpleDateFormat("dd-MMM-YYYY");
					String st=dt.format(new java.util.Date()).toString();
					session.setAttribute("dop",st);
					 out.println("<td><input type='text' name='dop' size=12 value='"+st+"' readonly></td>");
					%>
				</tr>
				<tr>
					<td><b>GENDER:</b></td>
					<td><input type="radio" name="gen" value="male" style="font-size: 1.2em" >MALE
					<input type="radio" name="gen" value="female" style="font-size: 1.2em" >FEMALE
					
					</td>
				</tr>
				<tr>
					<td><b>ADDRESS:</b></td>
					<td><textarea rows="2" cols="20" name="address" style="font-size: 19px" ></textarea></td>
				</tr>
				<tr>
					<td><b>PASSWORD:</b></td>
					<td><input type="text" name="pwd" style="font-size: 1.2em" placeholder="minimum 6 char"></td>
				</tr>
				<tr>
					<td><b>CONFIRM PASSWORD:</b></td>
					<td><input type="text" name="cpwd" style="font-size: 19px" ></textarea></td>
				</tr>
</table></br></br>

<input type="submit" value="SIGN-UP" style="padding:15px;border-radius: 15px;background-color:green">&ensp;&ensp;&ensp;


  

</form>
</body>
</html>


