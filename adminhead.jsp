<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">
	<style>
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

