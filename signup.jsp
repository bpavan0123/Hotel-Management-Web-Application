<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="park/image/favicon.png" type="image/png">
        <title>park Hotel</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login/css/style.css">
    <style>
        .ma
{
    float: right;
    margin: 5px 20px;
}
.ma li
{   
letter-spacing: 1px;
display:inline-block;
text-decoration: none;
font-display: none;
margin: 15px 10px ;
font-size: 17px;
font-weight: 600;
font-family: Arial, Helvetica, sans-serif;
}
.ma li  a
{ text-decoration: none;  
color :rgba(248, 123, 7, 0.747);
padding: 5px 10px ;
}
.ma li a:active 
{
border: 1px solid red;
}
.ma li a:hover
{
    background-color:coral ;
    border: 1px solid coral;
    color:rgb(248, 244, 244);
    border-radius: 15px ;
}

    </style>
</head>
<body>
        <div class="ma" >
                <ul class="list" >
                    <li><a href="home.html">HOME </a></li>
                    <li><a href="about.html">ABOUT</a></li>
                    <li><a  href="contact.html">CONTACT</a></li>
                    <li><a href="signup.jsp">SIGNUP</a></li>
                    <li><a href="login.jsp">LOGIN</a></li>
                    <li><a href="faq.html">FAQ</a></li>
                 </ul>        
</div>
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
              SimpleDateFormat dt=new SimpleDateFormat("dd-MMM-YYYY");
              String st=dt.format(new java.util.Date()).toString();
              session.setAttribute("dop",st);
  
              %>



    <div class="main">
        <section class="sign-in " style="margin-top: -1%;">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image" style="margin-top:20% ">
                        <figure><img src="login/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="login.jsp" class="signup-image-link">I am already member</a>
                    </div>

                    <div class="signin-form">
                         <h2 class="form-title">Sign up</h2>
                        <form method="POST"  class="register-form" onsubmit=" return validation() "  >
                                <span id="username_div" > </span>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name" ></i></label>
                                <input type="text" name="uname" id="uname"  placeholder="user Name" autofocus required/>
                                <span id="username_div" > </span>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="fname"  placeholder="first Name"/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="lname" placeholder="last Name" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="gmail" id="gmail" pattern="[^ @]*@[^ @]*"  placeholder="Your Email" required/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <input type="tel" name="mobile" id="mobile" placeholder="number" required />
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-male-female"></i></label>
                                   <select name="gen"  required   > 
                                    <option selected >GENDER</option>
                                    <option value="male">MALE</option>
                                    <option value="female">FEMALE</option>
                                  </select> 
                            </div>                                                   
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-google-maps"></i></label>
                                <input type="text" name="address"  placeholder="address" />
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pwd" id="pwd" placeholder="Password" required />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="cpwd" id="cpwd" placeholder="Repeat your password" required />
                            </div>
                            <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term"  onclick="myFunction()" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>Show Password</label>
                                </div>
                            
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" checked />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit"  class="form-submit" value="Register" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
           <script >
           function myFunction() {
    var x = document.getElementById("pwd");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
  function validation()
  {
    var username =document.getElementById(uname);
 var psd =document.getElementById(pwd);
 var cpsd =document.getElementById(cpwd);
 
 
    if (username.value != pwd.value) {
    username.style.border= "1px solid red";
    document.getElementById('pwd').style.color = "red";
    name_error.textContent = "password tdrfcyghjknl,";
    pwd.focus();
    return false;
  }


  }
           
           </script> 
</body>
</html>