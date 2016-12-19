<%-- 
    Document   : newcarj
    Created on : 13-Dec-2016, 11:02:35
    Author     : birendra sharma
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        int updateQuery = 0;
        String email = request.getParameter("email");   
        String carnumber = request.getParameter("carnumber");   
        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        String carcolor = request.getParameter("carcolor");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        //String photo = request.getParameter("photo");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("insert into car values (?,?,?,?,?,?,?)");
        pst.setString(1, email);
        pst.setString(2, carnumber);
        pst.setString(3, brand);
        pst.setString(4, model);
        pst.setString(5, carcolor);
        pst.setString(6, price);
        pst.setString(7, description);
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