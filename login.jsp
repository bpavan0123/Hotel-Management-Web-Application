<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="park/image/favicon.png" type="image/png">
        <title>park Hotel</title>
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css">

  
    <link rel="stylesheet" href="login/css/style.css">
    
   
 
</head>
<body>
        <div class="ma">
                        <ul class="list">
                            <li><a href="home.html">HOME </a></li>
                            <li><a href="about.html">ABOUT</a></li>
			                <li><a  href="contact.html">CONTACT</a></li>
			                <li><a href="signup.jsp">SIGNUP</a></li>
                            <li><a href="login.jsp">LOGIN</a></li>
                            <li><a href="faq.html">FAQ</a></li>
                         </ul>        
        </div>

  <div class="main">     
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="login/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="signup.jsp" class="signup-image-link">Create an account</a>
                        <a href="forgot.html"class="signup-image-link" >Forgot your password?</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        <form method="POST"  action="loginconnect.jsp" class="register-form" >
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="uname" id="your_name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="psw" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>