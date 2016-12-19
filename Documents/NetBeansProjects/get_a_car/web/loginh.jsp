<%-- 
    Document   : index
    Created on : 10-Dec-2016, 17:49:34
    Author     : birendra sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
                body,html
                {   
                    background-image:url(image/background.jpeg);
                    background-size:cover;
                    background-repeat:no-repeat;
                }
		.login
		{
			width:48%;
			height:450px;
			margin-left:25%;
			position:absolute;
			border-radius:20px;
			background:radial-gradient(black,grey);
			opacity:0.7;
		
		}
		.login:hover
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
		a{
                    color:white; 
                    margin-left:11%;
                    font-size: 20px;
                }
	</style>
    </head>
    <body>
        <fieldset class=login><legend><h1>Login</h1></legend>
        <form method="post" action="loginj.jsp">
            <center>
            <table border="1" cellpadding="5" cellspacing="2">
                <tbody>
                    <tr>
                        <td><b>Email</b></td>
                        <td><input type="text" name="email" required/></td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" />
                          <a href="forgoth.jsp">Forgot Password ?</a>
                        </td>                        
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                          <a href="signuph.jsp"><b>Still not registered?</b></a>
                        </td>                        
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </fieldset>
    </body>
</html>