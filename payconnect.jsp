<body style=" background-image: linear-gradient(to right top, #6684fc, #5792fe, #4f9efe, #50a9fb, #5ab3f7, #72bbf6, #87c3f4, #9bcbf3, #b5d4f4, #ccdef5, #e1e9f6, #f3f4f6);" text='blue'>
<%@ page language='java' import='java.sql.*,java.io.*' %>
<%
Statement stmt=null;
Connection cn=null;
int no=0;
   
	
	String t1=request.getParameter("t1");
	String t2=request.getParameter("t2");
	String t3=request.getParameter("t3");
	String t4=request.getParameter("t4");

	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		 cn=DriverManager.getConnection("jdbc:odbc:hotel");
	
try{
	
		
		 stmt=cn.createStatement();
		String str="Select max(transactionid) from bankdetails";
		ResultSet rs=stmt.executeQuery(str);
		
		
		if(rs.next())
		{
		 no=Integer.parseInt(rs.getString(1))+1;
		 
		}
		
	 
	}
catch(Exception e){
	no=99999;
   }
	try
	{
		String uid=(String)session.getAttribute("nod2");

		if(t2.length()!=0 && t3.length()!=0 && t4.length()!=0 )
		{

		Statement stmt1=cn.createStatement();
 	String str1="insert into bankdetails  values('"+uid+"','+no+','"+t1+"','"+t2+"','"+t3+"','"+t4+"','Active');";
		
			stmt1.executeUpdate(str1);
      out.println("<center><br><br><b>Room Booked Successfully. with Transaction id.....</b></center>"+no);	
		 
				stmt.close();
		cn.close();
}

		 else
	 {
      out.println("<center><br><br><b>InComplete City Information to Add...</b></center>");	
	 }

	
}
                  
    catch(Exception e)
     {
              out.println("<center><br><br><b>InValid Information to Book...</b></center>"+e);
     }
%>
</body>