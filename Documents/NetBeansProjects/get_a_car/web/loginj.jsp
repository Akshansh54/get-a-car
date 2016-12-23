<%-- 
    Document   : login
    Created on : 10-Dec-2016, 17:52:37
    Author     : birendra sharma
--%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <body>
<%
    try{
        String email = request.getParameter("email");   
        session.setAttribute( "name", email );
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select email,password from signup where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()){           
  %>                 
            <h1>You are logged in successfully.</h1>
             <a href="catalogueh.jsp" target=main>See the Cars</a>
  <%  }
           else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
    </body>
</html>