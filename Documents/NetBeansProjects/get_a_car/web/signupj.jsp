<%-- 
    Document   : registration
    Created on : 10-Dec-2016, 11:00:04
    Author     : birendra sharma
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        int updateQuery = 0;
        String fname = request.getParameter("fname");   
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rpassword = request.getParameter("rpassword");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("insert into signup value (?,?,?,?,?)");
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, email);
        pst.setString(4, password);
        pst.setString(5, rpassword);
        updateQuery = pst.executeUpdate();                        
        if(updateQuery!=0)           
           out.println("data inserted successfully");        
        else
           out.println("something went wrong");            
   }
   catch(Exception ex){       
       out.println(ex.getMessage());       
   }      
%>