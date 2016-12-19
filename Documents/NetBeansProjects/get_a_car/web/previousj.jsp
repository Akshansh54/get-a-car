<%-- 
    Document   : login
    Created on : 10-Dec-2016, 17:52:37
    Author     : birendra sharma
--%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String email = request.getParameter("email");   
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select email from signup where email=?");
        pst.setString(1, email);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>