<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat" %> 
<%@page import="java.util.Date" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN" "http://www.w3.org/TR/REC-html40/frameset.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!-- CSS Ticket inspired by -->
<!-- https://dribbble.com/shots/2677752-Dribbble-invite-competition -->
<style>
body {
  background: #dd3f3e;
  font-family: 'Montserrat', sans-serif;
  margin: 0;
  padding: 0;
}
.ticket {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 700px;
  margin: 20px auto;
}
.ticket .stub,
.ticket .check {
  box-sizing: border-box;
}
.stub {
  background: #ef5658;
  height: 250px;
  width: 250px;
  color: white;
  padding: 20px;
  position: relative;
}
.stub:before {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  border-top: 20px solid #dd3f3e;
  border-left: 20px solid #ef5658;
  width: 0;
}
.stub:after {
  content: '';
  position: absolute;
  bottom: 0;
  right: 0;
  border-bottom: 20px solid #dd3f3e;
  border-left: 20px solid #ef5658;
  width: 0;
}
.stub .top {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 40px;
  text-transform: uppercase;
}
.stub .top .line {
  display: block;
  background: #fff;
  height: 40px;
  width: 3px;
  margin: 0 20px;
}
.stub .top .num {
  font-size: 10px;
}
.stub .top .num span {
  color: #000;
}
.stub .number {
  position: absolute;
  left: 40px;
  font-size: 150px;
}
.stub .invite {
  position: absolute;
  left: 150px;
  bottom: 45px;
  color: #000;
  width: 20%;
}
.stub .invite:before {
  content: '';
  background: #fff;
  display: block;
  width: 40px;
  height: 3px;
  margin-bottom: 5px;
}
.check {
  background: #fff;
  height: 250px;
  width: 450px;
  padding: 40px;
  position: relative;
}
.check:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  border-top: 20px solid #dd3f3e;
  border-right: 20px solid #fff;
  width: 0;
}
.check:after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  border-bottom: 20px solid #dd3f3e;
  border-right: 20px solid #fff;
  width: 0;
}
.check .big {
  font-size: 80px;
  font-weight: 900;
  line-height: .8em;
}
.check .number {
  position: absolute;
  top: 50px;
  right: 50px;
  color: #ef5658;
  font-size: 40px;
}
.check .info {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: start;
      -ms-flex-pack: start;
          justify-content: flex-start;
  font-size: 12px;
  margin-top: 20px;
  width: 100%;
}
.check .info section {
  margin-right: 50px;
}
.check .info section:before {
  content: '';
  background: #ef5658;
  display: block;
  width: 40px;
  height: 3px;
  margin-bottom: 5px;
}
.check .info section .title {
  font-size: 10px;
  text-transform: uppercase;
}
    </style>
        <title>TICKET</title>
    </head>
    <body background="images\3D.png">
        <h1 style="color:red;background-color:black;text-align: center;" >
            <marquee>
                
             Online Movies Ticket Booking
</marquee>
        </h1>           
        <div style="color: black;">
            <nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><%
          for(int i=1;i<=650;i++)
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
             Statement st4=con.createStatement();
             String q4="select* from register";
             ResultSet rs4=st4.executeQuery(q4);
             while(rs4.next())
             {
                 if(User_Name.equals(rs4.getString("Username")))
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
        <h1 align="center">TICKET</h1>
        <div class="ticket">
  <div class="stub">
    <div class="top">
      <span class="admit">Admit</span>
      <span class="line"></span>
      <span class="num">
        TICKET
        <span>31415926</span>
      </span>
    </div>
    <div class="number"><%
            int q=0; 
            q=Integer.parseInt(request.getParameter("d1"));
            int Seats=0;
            Seats=Integer.parseInt(request.getParameter("Seats"));
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select * from movies_name where id="+q+"";
             ResultSet rs=st.executeQuery(q1);
               out.println(""+Seats);%></div>
    <div class="invite">
      <%
         //Cookie cookie = null;
         //Cookie[] cookies = null;
         //String User_Name="";
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
                //Class.forName("com.mysql.jdbc.Driver");
             //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st1=con.createStatement();
             String q2="select* from register";
             ResultSet rs1=st1.executeQuery(q2);
             while(rs1.next())
             {
                 if(User_Name.equals(rs1.getString("Username")))
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
      %>
    </div>
  </div>
  <div class="check">
      <%
             Statement st2=con.createStatement();
             String q3="select * from movies_name where id="+q+"";
             ResultSet rs2=st.executeQuery(q3);
             while(rs2.next())
             {
                 out.println("MOVIES NAME : "+rs2.getString("Movies_Name"));%><br/><%
                 out.println("THEATER : "+rs2.getString("Theatre"));%><br/><%
                 out.println("MOVIES DATE : "+rs2.getString("Movies_Date"));%><br/><%
                 out.println("SHOW TIME : "+rs2.getString("Show_Time"));%><br/><%
                 out.println("PRICE : "+rs2.getString("Rate"));%><br/><%
                 out.println("SEATS YOU BOOKED : "+Seats);%><br/><%
                 
             }
             %>
    <div class="number">#PRM</div>
    <div class="info">
      <section>
        <div class="title">Date</div>
        <div><%Date date = new Date();
               out.println(""+date);%></div>
      </section>
      <section>
        <div class="title">Issued By</div>
        <div>PRM</div>
      </section>
      <section>
        <div class="title">Invite Number</div>
        <div>31415926</div>
      </section>
    </div>
  </div>
</div>
      <div align="center">
      <%out.println("<input type=\"submit\" value=\"Print Ticket\" onClick=\"window.print()\"/>");%><br/><br/>
      <form action="delcookie.jsp" method="post">
            <form class="form-horizontal" action="/action_page.php">
      <button type="submit" class="btn btn-primary">Log Out</button>
   </form>
      </div>
    </body>
</html>
