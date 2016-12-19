<%-- 
    Document   : feedback
    Created on : 12-Dec-2016, 16:45:53
    Author     : birendra sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<title> Feedback form</title>
		<link href = "css/feedback.css" rel = "stylesheet">
		
	</head>
	<body>
		
			<fieldset class=feedback><legend><h1>Feedback Form</h1></legend>
						<form action="action_page" >
						<input type="text" name="firstname" placeholder="Enter your First name">
						<br>
						<input type = "text" name = "username" placeholder="Enter your Username">
						<br>
						<input type = "text" name = "address" placeholder="Enter your Address">
						<p>Enter your feedback</p>
						<textarea rows = "4" col = "50" value="Enter your feedback here"></textarea>
						<br>
						<br>
							<button type="submit">
								<b>Submit feedback</b>
							</button>


						
						</form>
			</fieldset >
	</body>
</html>