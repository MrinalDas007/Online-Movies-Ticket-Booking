<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" type="text/css"/>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Confirmation Page</title>
    </head>
    <body background="images\bgadmin2.jpg">
        <h1 style="color:red;background-color:black;text-align: center;" >
            <marquee>
                
             Online Movies Ticket Booking
</marquee>
        </h1>           
        <div style="color: yellow;text-align: center;">
            <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PRM</a>
    <ul class="nav navbar-nav">
      <li><a href="index.html">Home</a></li>
      <li><a href="About_us.html">About Us</a></li>
      <li><a href="Gallery.html">Movie Gallery</a></li>
      <li><a href="register_form.html">Register</a></li>
      <li><a href="checkcookies.jsp">Login</a></li>
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
        <h1 align="center">Movie Booking Form</h1>
        <%
            int q=0; 
            int as=0,bs=0;
            q=Integer.parseInt(request.getParameter("d1"));
                Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select * from movies_name where id="+q+"";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 out.println("MOVIE NAME : "+rs.getString("Movies_Name"));%><br/><%
                 out.println("THEATER : "+rs.getString("Theatre"));%><br/><%
                 out.println("MOVIE DATE : "+rs.getString("Movies_Date"));%><br/><%
                 out.println("SHOW TIME : "+rs.getString("Show_Time"));%><br/><%
                 out.println("PRICE : "+rs.getString("Rate"));%><br/><%
                 String TotalSeats="";
               String BookedSeats="";
               TotalSeats=rs.getString("Total_Seats");
               BookedSeats=rs.getString("Booked_Seats");
               int ts=Integer.parseInt(TotalSeats);
               bs=Integer.parseInt(BookedSeats);
               as=ts-bs;
        out.println("AVALAIBLE SEATS : "+as);
             }
                 %>
       <form action="Book.jsp?as=<%out.print(""+as);%>&d1=<%out.println(""+q);%>&bs=<%out.println(""+bs);%>" method="post">
            <div class="form-group">
    <label class="control-label col-sm-2" for="text">Seats:</label>
    <div class="col-sm-8"> 
      <input type="text" class="form-control" name="Booked_Seats" placeholder="Enter No. of Seats"><br/>
    </div>
  </div>
      <button type="submit" class="btn btn-primary">Confirm</button>
</div>
      <br/>
        <h3 align="center"><a href="delcookie.jsp">Log Out</a></h3>
        </form><div align="center">
         <a href="Success1.jsp"><strong>Back</strong></a>
        </div>
    </body>
</html>
