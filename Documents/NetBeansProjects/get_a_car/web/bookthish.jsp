<%@ page import="java.sql.*" %>

<HTML>
    <HEAD>
        <TITLE>Booking</TITLE>
        <style>
            .detail
		{
			width:48%;
			height:150px;
			margin-left:25%;
			position:absolute;
			border-radius:20px;
			background:radial-gradient(red,yellow);
			opacity:0.7;
                        color:black;
		}
		.detail:hover
		{
		opacity:1.0;
		}
        </style>
    </HEAD>

    <BODY>
        <H1 style = "margin-left:25%;">Book this Car</H1>
                
        <% 
        try{
            String email = request.getParameter("email");  
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    

            PreparedStatement pst = conn.prepareStatement("select * from car where email = '" + email + "'");

            
            ResultSet rs = pst.executeQuery() ; 

            if(!rs.next()) {
            } else {
        %>
         <fieldset class=detail><legend><h1>Your Previous Cars</h1></legend>      
        <TABLE BORDER="1">
            <TR>
               <TH>email</TH>
               <TH>carnumber</TH>
               <TH>brand</TH>
               <TH>model</TH>
               <TH>carcolor</TH>
               <TH>price</TH>
               <TH>description</TH>
           </TR>
           <TR>
               <TD style="color:white;"> <%= rs.getString(1) %> </TD>
               <TD style="color:white;"> <%= rs.getString(2) %> </TD>
               <TD style="color:white;"> <%= rs.getString(3) %> </TD>
               <TD style="color:white;"> <%= rs.getString(4) %> </TD>
               <TD style="color:white;"> <%= rs.getString(5) %> </TD>
               <TD style="color:white;"> <%= rs.getString(6) %> </TD>
               <TD style="color:white;"> <%= rs.getString(7) %> </TD>
           </TR>
       </TABLE>
         </fieldset>
       <BR>
       <% 
           }
}
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }            
       %>
    </BODY>
</HTML>