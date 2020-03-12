<!DOCTYPE html>
<html>
<body><div style="display: flex;margin-top: 40px">
    <div>
    <img src="fdbk.jpg">
</div><div style="width: 60%;height: 80%;background-color:#b6b6b645;">
    <form action="feedbackconnect.jsp">
   <center><h1>FEEDBACK</h1></center>
        
    <center><table border="1" cellspacing="10" cellpadding="5">
            
            <tbody>
<tr>
<td>POSTED DATE</td>
<%
              java.text.SimpleDateFormat sd=new java.text.SimpleDateFormat("dd-MM-yyyy");
	String str=sd.format(new java.util.Date()).toString();
	session.setAttribute("t2",str);
out.println("<td><input type='text' name='t2' size='24' value='"+str+"'></td>");
%></tr>
                <tr>
                    <td>YOUR NAME</td>
                    <td><input type="text" name="YNAME"  size="24"/></td>
                </tr>
                <tr>
                    <td>EMAIL ID</td>
                    <td><input type="text" name="EMAILID" size="24" /></td>
                </tr>
                <tr>
                    <td>FEEDBACK</td>
                    <td><textarea rows="3" cols="24" name="feed"></textarea></td>
                </tr>
            </tbody>
        </table>
     <input type="submit" value="submit" >
    </center>
       
    </form>
</div>
</div>


</body>
</html>