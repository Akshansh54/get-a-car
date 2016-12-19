<!doctype html>
<html>
	<head>
		<meta charset = "utf-8">
		<title> Login Page</title>
		<script>
				function myFunction() 
				{ 
				var x = document.getElementById("email").value;
					alert("Email sent to "+ x);
				}
			</script>
			<style>
                        body,html
                {   
                    background-image:url(image/background.jpeg);
                    background-size:cover;
                    background-repeat:no-repeat;
                }
			fieldset
			{
			border-radius:20px;
			width:60%;
			height:450px;
			position:absolute;
			color:white;
			background:radial-gradient(black,grey);
			opacity:0.7;
			margin-left:20%;
			font-size
			}
			fieldset:hover
			{
			opacity:1.0;
			}
			input
			{
			text-align:center;
			height:40px;
			width:80%;
			margin-left:10%;
			margin-top:35px;
			border-radius:10px;
			font-size:20px;
			}
			</style>
	</head>
	<body>
		<fieldset><legend><h1>Reset Password</h1></legend>
		<form action="action_page" >
			
			<br><br><br><br><br>
			<input type="email" id="email" placeholder="Enter Your Email">
			<br>
			<br>
			<input type="button" onclick="myFunction()" value="Send">
		
			
		</form>
		</fieldset>
	</body>
</html>