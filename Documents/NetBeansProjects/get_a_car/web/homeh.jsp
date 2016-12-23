<%-- 
    Document   : homeh
    Created on : 12-Dec-2016, 11:38:58
    Author     : birendra sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Rental</title>
        <style>
            body,html
                {
                    background-size:cover;
                    background-repeat:no-repeat;
                }
            ul 
                {
                    list-style-type: none;
                    margin: 0;
                    padding: 0;
                    overflow: hidden;
                    background-color:transparent;
                    margin-top:-10px;
                }
            li a 
                {
                    display: block;
                    text-align: center;
                    padding: 10px 35px;
                    text-decoration: none;
                    height:10px;
                }
            img
                {
                    position:absolute;
                    height:60px;
                    margin-left:800px;
                }
            li a:hover 
                {
                    background-color:#6c6;
                }
            li 
                {
                    float: left;
                } 
            .main
                {
                    border:none;
                    height:600px;
                }
            .panel
                {
                    border:none;
                    margin-left:-10px;
                    margin-top:-8px;
                }
        </style>
    </head>
<body>
    
<ul>
  <li><a  href="signuph.jsp" target=main>Home</a></li>
  <li><a href="catalogueh.jsp" target=main>cars</a></li>
  <li><a href="loginh.jsp" target=main>Login</a></li>
  <li><a href="contacth.jsp" target=main>Contact</a></li>
  <li><a href="about_us.jsp" target=main>About Us</a></li>
  <li><a href="becomehosth.jsp" target=main>Become host</a></li>
  <li>Hello, <%= session.getAttribute( "name" ) %></li>
</ul>


<iframe name="main" class= main width=100% height=85% src="frontpage.jsp"></iframe>

</body>
</html>