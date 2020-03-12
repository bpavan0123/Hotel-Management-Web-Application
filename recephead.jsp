<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">
	<style>
		body{
			background: rgb(252,251,251);
background: linear-gradient(138deg, rgba(252,251,251,1) 0%, rgba(54,185,196,1) 30%, rgba(180,215,217,1) 44%, rgba(12,209,232,1) 100%);
		}
		.sty{
			padding: 0px;
			margin: 0px;
			height: 80%;
			width: 100%;
			
			font-size: 38px;
			font-family: 'Jacques Francois Shadow', cursive;
		}
	</style>
</head>
<body class=sty>
<center>
<%
     out.println("<b style='position:absolute;top:70pt'> "+session.getAttribute("usr")+"</b>");
%>
	<h1>WELCOME</h1></center>
</body>
</html>
