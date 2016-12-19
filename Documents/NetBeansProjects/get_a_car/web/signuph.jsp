<%-- 
    Document   : index
    Created on : 10-Dec-2016, 16:58:06
    Author     : birendra sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <style>
                body,html
                {   
                    background-image:url(image/background.jpeg);
                    background-size:cover;
                    background-repeat:no-repeat;
                }
		.signup
		{
			border-radius:20px;
			width:45%;
			height:600px;
			position:absolute;
			background:radial-gradient(black,grey);
			opacity:0.7;
                        margin-left: 25%;
		}
		.signup:hover
		{
		opacity:1.0;
		}
                input
		{
		height:35px;
		width:80%;
		margin-left:10%;
		margin-top:20px;
		border-radius:10px;
		font-size:20px;
		}
		h1{color:white}
		a{color:white; margin-left:11%;}
         </style>
    </head>
    <body>
        <fieldset class=signup><legend><h1>Sign-up</h1></legend>
        <form method="post" action="signupj.jsp">
            <center>
            <table border="1" cellpadding="5" cellspacing="2">
                <tbody>
                    <tr>
                        <td><b>First Name</b></td>
                        <td><input type="text" name="fname" required ="fill name "/></td>
                    </tr>
                    <tr>
                        <td><b>Last Name</b></td>
                        <td><input type="text" name="lname" required ="fill surname "/></td>
                    </tr>
                    <tr>
                        <td><b>Email</b></td>
                        <td><input type="text" name="email" required =" Fill email"/></td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td><input type="password" name="password" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td><b>Re-type Password</b></td>
                        <td><input type="password" name="password" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Sign Up" />
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </center>
        </form>
            </fieldset >
    </body>
</html>