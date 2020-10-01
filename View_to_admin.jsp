<!DOCTYPE html>
<html lang="en">
<head>
  <title>VIEW TO ADMIN PAGE</title>
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
       <div class="container" align="center">
           <h2 align="center" style="color: yellow">MOVIE DETAILS</h2>
           
<table class="table table-striped">
    
    <thead>
      <tr>
        <th style="color: yellow">Movies Name</th>
        <th style="color: yellow">Theatre</th>
        <th style="color: yellow">Movies Date</th>
        <th style="color: yellow">Show Time</th>
        <th style="color: yellow">Movies Rate</th>
        <th style="color: yellow">Total Seats</th>
        <th style="color: yellow">Delete</th>
        <th style="color: yellow">Update</th>
      </tr>
    </thead>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
                Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select * from movies_name";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 %>
    <tbody>
      <tr>
        <form action="Updatecode.jsp?d2=<%out.println(rs.getString("id")); %>" method="post">
        <td style="color: chocolate"><input type="text" name="Movies_Name<%=rs.getString("id")%>" value="<%=rs.getString("Movies_Name") %>"</td>
        <td style="color: chocolate"><input type="text" name="Theatre<%=rs.getString("id")%>" value="<%=rs.getString("Theatre")%>"</td>
        <td style="color: chocolate"><input type="text" name="Movies_Date<%=rs.getString("id")%>" value="<%=rs.getString("Movies_Date") %>"</td>
        <td style="color: chocolate"><input type="text" name="Show_Time<%=rs.getString("id")%>" value="<%=rs.getString("Show_Time") %>"</td>
        <td style="color: chocolate"><input type="text" name="Rate<%=rs.getString("id")%>" value="<%=rs.getString("Rate")%>"</td>
        <td style="color: chocolate"><input type="text" name="Total_Seats<%=rs.getString("id")%>" value="<%=rs.getString("Total_Seats")%>"</td>
        <td style="color: chocolate"><a href="Deletecode.jsp?d1=<%out.println(rs.getString("id")); %>" style="color: orangered">Delete</a></td>
        <td style="color: chocolate"><input type="submit" class="btn btn-primary" value="Update" ></form><%}%></td>
        
        </tr>
  </table>
      <br/>
      <h3 align="center"><a href="index.html" style="color: yellow"><strong>Log Out</strong></a></h3>
      <a href="dashboard_admin.html" style="color: yellow"><strong>Back</strong></a>
       </div>
</body>
</html>
