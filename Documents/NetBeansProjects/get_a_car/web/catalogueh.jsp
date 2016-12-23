<%@ page import="java.sql.*" %>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
        <style>
            .detail
		{
			width:60%;
			margin-left:25%;
			border-radius:20px;
			background:radial-gradient(red,yellow);
			opacity:0.7;
                        color:white;
		}
		.detail:hover
		{
		opacity:1.0;
		}
        </style>
    </HEAD>

    <BODY>
        <H1 style = "margin-left:25%;">Select any car for your journey.</H1>
        


        
        <% 
        try{
            //String email = request.getParameter("email");  
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?" + "user=root&password=");    

            PreparedStatement pst = conn.prepareStatement("select * from car");

            
            ResultSet rs = pst.executeQuery() ; 

            while(rs.next()) {
            %>
                    <fieldset class=detail><legend><h1>Take a car</h1></legend>      
        <TABLE "BORDER="1">
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
           <FORM METHOD="post" action ="bookthish.jsp">
                <INPUT TYPE="SUBMIT" value="Book this car" style ="margin-left: 90%">
          
            </FORM>
       </TABLE>
         </fieldset>
                         
          <% 
           }
}
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }            
       %>
    </BODY>
</HTML>