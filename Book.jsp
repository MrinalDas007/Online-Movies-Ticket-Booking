<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    int q=0;
    q=Integer.parseInt(request.getParameter("d1"));
    int as=0,bs=0;
    int Seats=0;
    Seats=Integer.parseInt(request.getParameter("Booked_Seats"));
    as=Integer.parseInt(request.getParameter("as"));
    bs=Integer.parseInt(request.getParameter("bs"));
    if(as<Seats)
    {
      out.println("<script>alert(\"Seats Not Available\");window.location= \"Confirmation.jsp?d1="+q+"\";</script>");  
    }
    else
        {
             bs=bs+Seats;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
                Statement st1=con.createStatement();
                String s1="update movies_name set Booked_Seats='"+bs+"' where id="+q+"";
                st1.executeUpdate(s1);
                out.println("<script>alert(\"Booking Successful\");window.location=\"ticketdemo.jsp?d1="+q+"&Seats="+Seats+"\""+";</script>");
                //response.sendRedirect( "ticket.jsp?d1=out.println(""+q);&Seats=out.println(""+Seats);")
                }
            catch(Exception e1)
                {
                out.println("Error:"+e1.getMessage());
                }
        }
            %>