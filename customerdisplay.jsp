<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
		<link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
<style>
*{
  box-sizing: border-box;
}

body{
  margin:0;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size:1rem;
  font-weight:normal;
  line-height:1.5;
  color:#333;
  overflow-x:hidden;
}

.v-header{
  height:100vh;
  display:flex;
  align-items:center;
  color:#fff;
}

.container{
  max-width:960px;
  padding-left:1rem;
  padding-right:1rem;
  margin:auto;
  text-align:center;
}

.fullscreen-video-wrap{
  position:absolute;
  top:0;
  left:0;
  width:100%;
  height:100vh;
  overflow:hidden;
}

.fullscreen-video-wrap video{
  min-height:100%;
  min-width:100%;
}

.header-overlay{
  height:100vh;
  position: absolute;
  top:0;
  left:0;
  width:100vw;
  z-index:1;
  
  
}

.header-content{
  z-index:2;
}

.header-content h1{
  font-size:50px;
  margin-bottom:0;
}

.header-content p{
  font-size:1.5rem;
  display:block;
  padding-bottom:2rem;
}



@media(max-width:960px){
  .container{
    padding-right:3rem;
    padding-left:3rem;
  }
}
</style>
	
	
</head>
<body> 
	<header class="v-header container">
		<div class="fullscreen-video-wrap">
			<video autoplay loop muted>
                <source src="video2.mp4" type="video/mp4">
            </video>
		</div>
		<div class="header-overlay"></div>
		<div class="header-content text-md-center">
		  <h1>Welcome <% out.println("<b >"+session.getAttribute("uid")+"</b>"); %></h1>
		  <p>You are welcome here,Be at your ease.
			Get up when you're ready,
			go to bed when you ease.
			We're happy to share with you Such as we've got.
			Everything for your comfort.
			And strong coffee in the pot.
			You don't have to thank us
			Or laugh at your jokes
			Sit sleep and come often
			You're one of the folks.</p>
			<p>Whether you
					come into visit,
					or just to rest,
					when you enter
					our home
					may you be <h7>BLESSED</h7></p>
		</div>
	  </header>
	
    
	
</body>
</html>


















