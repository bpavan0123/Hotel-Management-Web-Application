<html>
<head>
		<link rel="stylesheet" href="home.css"  type="text/css">
		<!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="park/image/favicon.png" type="image/png">
        <title>park Hotel</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="park/css/bootstrap.css">
        <link rel="stylesheet" href="park/vendors/linericon/style.css">
        <link rel="stylesheet" href="park/css/font-awesome.min.css">
        <link rel="stylesheet" href="park/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="park/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="park/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="park/vendors/owl-carousel/owl.carousel.min.css">
        <!-- main css -->
        <link rel="stylesheet" href="park/css/style.css">
        <link rel="stylesheet" href="park/css/responsive.css">
	<style>
		/* body{background: #2980B9;  
background: linear-gradient(to left, #FFFFFF, #6DD5FA, #2980B9); 
} */

body{
background-image: linear-gradient(to bottom,  #cbd7f1, #dfe6f3, #f3f4f6, #749af2, #7ba0ed, #88a9ed, #95b2ec, #a2bbeb, #b6c9ee, #cbd7f1, #dfe6f3, #f3f4f6);
}
		table {
			margin-top: 2px;
  width:100%;
  
}
h2{
	margin-top: 80px;
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
#hed
{
	position: absolute;
	top: 10px;
}

	</style>
	
</head>
<body>
		<header class="header_area">
                <div class="main">
                                <ul class="list">
                                    <li><a href="home.html" >HOME</a></li>
                                    <li><a href="about.html">ABOUT</a></li>
                                    <li><a  href="contact.html">CONTACT</a></li>
                                    <li><a  href="viewfeedback.jsp">CUSTOMER REVIEW</a></li>
                                    <li><a href="signup.jsp">SIGNUP</a></li>
                                    <li><a href="login.jsp">LOGIN</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                    
                                 </ul>        
                </div>
                    </header>



	<%@ page import="java.sql.*"%>
	<%
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:hotel");
	Statement stmt=con.createStatement();
	String str="Select * from feedback";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<center><h2>Customeer Review</h2>");
	out.println("<table id='t01' border='0px' margin-top='1px' "  );
	out.println("<tr><th>Name</th>");
	out.println("<th>Email</th>");
	out.println("<th>Description</th>");
	out.println("<th>Posted Date</th></tr>");
	while(rs.next()){
	out.println("<tr><td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
	/*SimpleDateFormat sd=new SimpleDateFormat("dd-MMM-yyyy");
		str=sd.format(rs.getDate(4));
	         out.println("<td>"+str+"</td></tr>");*/
	}
out.println("</table>");

}	
catch(Exception e){
	out.println(e);

}
%>
<!-- <section class="blog_categorie_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
						<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget author_widget">
								<img class="author_img rounded-circle" src="park/image/blog/author.png" alt="">
								<h4>Charlie Barber</h4>
								<p>Senior blog writer</p>
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-github"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
								<p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.</p>
								<div class="br"></div>
						</aside>
						</div>
				</div>
				<div class="col-lg-4">
						<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget author_widget">
								<img class="author_img rounded-circle" src="park/image/blog/author.png" alt="">
								<h4>Charlie Barber</h4>
								<p>Senior blog writer</p>
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-github"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
								<p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.</p>
								<div class="br"></div>
							</aside>
							</div>

				</div>
				<div class="col-lg-4">
						<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget author_widget">
								<img class="author_img rounded-circle" src="park/image/blog/author.png" alt="">
								<h4>Charlie Barber</h4>
								<p>Senior blog writer</p>
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-github"></i></a>
									<a href="#"><i class="fa fa-behance"></i></a>
								</div>
								<p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.</p>
								<div class="br"></div>
							</aside>
					</div>
				</div>
			</div>
		</div>
	</section> -->
<footer class="footer-area section_gap" style="padding: 1%; margin-top: 18%;">
<div class="container">
	<div class="border_line"></div>
	<div class="row footer-bottom d-flex justify-content-between align-items-center">
		<p class="col-lg-8 col-sm-12 footer-text m-0">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This  is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">LUCKEY</a>
</p>
		<div class="col-lg-4 col-sm-12 footer-social">
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-dribbble"></i></a>
			<a href="#"><i class="fa fa-behance"></i></a>
		</div>
	</div>
</div>
</footer>

</body>