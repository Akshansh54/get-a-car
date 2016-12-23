<%-- 
    Document   : newcarh
    Created on : 13-Dec-2016, 11:02:10
    Author     : birendra sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Details</title>
        <style>
                body,html
                {   
                    
                    background-size:cover;
                    
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
		height:30px;
		width:80%;
		margin-left:10%;
		margin-top:20px;
		border-radius:10px;
		font-size:20px;
		}
		h1{color:green}
		a{color:blue; margin-left:11%;}
         </style>
    </head>
    <body>
        <fieldset class=signup><legend><h1>Car Details</h1></legend>
        <form method="post" action="newcarj.jsp">
            <center>
            <table border="1" cellpadding="5" cellspacing="2">
                <tbody>
                    <tr>
                        <td style ="color:white;"><b>Your Email</b></td>
                        <td><input type="text" name="email" required ="fill name "/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Car Number</b></td>
                        <td><input type="text" name="carnumber" required ="fill surname "/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Brand</b></td>
                        <td><input type="text" name="brand" required =" Fill email"/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Model</b></td>
                        <td><input type="text" name="model" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Car Color</b></td>
                        <td><input type="text" name="carcolor" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Price</b></td>
                        <td><input type="text" name="price" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td style ="color:white;"><b>Description</b></td>
                        <td><input type="text" name="description" required =" Fill password"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" >
                            <input type="submit" value="Upload Details" />
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </center>
        </form>
            </fieldset >
    </body>
</html>