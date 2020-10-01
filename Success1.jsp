<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat" %> 
<%@page import="java.util.Date" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>SUCCESS PAGE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" type="text/css"/>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="images\pvr3.jpg">
   <h1 style="color:red;background-color:black;text-align: center;" >
            <marquee>
                
             Online Movies Ticket Booking
</marquee>
        </h1>           
        <div style="color: black;text-align: center;">
            <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PRM</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.html">Home</a></li>
      <li><a href="About_us.html">About Us</a></li>
      <li><a href="Gallery.html">Movie Gallery</a></li>
      <li><a href="register_form.html">Register</a></li>
      <li class="active"><a href="checkcookies.jsp">Login</a></li>
      <li class="active"><%
          for(int i=1;i<=130;i++)
          {
              out.print("&nbsp");
          }
          Cookie cookie = null;
         Cookie[] cookies = null;
         String User_Name="";
         cookies = request.getCookies();
         if( cookies != null ) {
            //out.println("<h2> Found Cookies Name and Value</h2>");
               for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               if(cookie.getName().equals("User_Name"))
               {
                    User_Name=cookie.getValue();
               }
            }
                try
            {
                Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select* from register";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 if(User_Name.equals(rs.getString("Username")))
                 {
                     out.print(User_Name);
                 }
             }
             out.print("");
            }
            catch(Exception e1)
                    {
                        out.println(e1.getMessage());
                    }
            }
            else
                out.print("");
      %></li>
    </ul>
  </div>
            </nav>
    <div class="container">
           <h2 style="color: yellow" align="center">Welcome to Movies Booking</h2>
           
<table class="table table-striped">
    
    <thead>
      <tr>
        <th style="color: yellow; text-align: center">Movies Name</th>
        <th style="color: yellow; text-align: center">Theatre</th>
        <th style="color: yellow; text-align: center">Movies Date</th>
        <th style="color: yellow; text-align: center">Show Time</th>
        <th style="color: yellow; text-align: center">Movies Rate</th>
        <th style="color: yellow; text-align: center">Available Seats</th>
        <th style="color: yellow; text-align: center">BOOK</th>
      </tr>
    </thead>
<%
          
                Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select * from movies_name";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 String moviedate="";
                 moviedate=rs.getString("Movies_Date");
                 String showtime="";
                 showtime=rs.getString("Show_Time");
                 String dt= moviedate+"-"+showtime;
                 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
                    //surround below line with try catch block as below code throws checked exception
                    Date startDate = sdf.parse(dt);
                    
                    //out.println(""+startDate);
                    Date date = new Date();
                    //out.println(""+date);
                    int val=startDate.compareTo(date);
                    //out.println(""+val);
                    if(val>=0)
                    {
                        
                    
                 %>
                 
    <tbody>
      <tr>
          <td><% out.println(rs.getString("Movies_Name")); %></td>
        <td><% out.println(rs.getString("Theatre")); %></td>
        <td><% out.println(rs.getString("Movies_Date")); %></td>
        <td><% out.println(rs.getString("Show_Time")); %></td>
        <td><% out.println(rs.getString("Rate")); %></td>
        <td><% String TotalSeats="";
               String BookedSeats="";
               TotalSeats=rs.getString("Total_Seats");
               BookedSeats=rs.getString("Booked_Seats");
               int ts=Integer.parseInt(TotalSeats);
               int bs=Integer.parseInt(BookedSeats);
               int as=ts-bs;
        out.println(""+as); %></td>
        <%
            if (as==0)
            {%>
                <td><%out.println("Book");%></td>
            <%}
                else
            {%>
        <td><a href="Confirmation.jsp?d1=<%out.println(rs.getString("id")); %>&as=<%out.println(""+as); %>">Book</a></td>
            <%}
}
}%>
      </tr>
      
  </table>
      <form action="delcookie.jsp" method="post">
            <form class="form-horizontal" action="/action_page.php">
      <button type="submit" class="btn btn-primary">Log Out</button>
   </form>
       </div>
      
</body>
</html>
