<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    int q=0;
    String MovieName="";
    String theater="";
    String MovieDate="";
    String Showtime="";
    String MovieRate="";
    String TotalSeats="";
    q=Integer.parseInt(request.getParameter("d2"));
    MovieName=request.getParameter("Movies_Name"+q);
    theater=request.getParameter("Theatre"+q);
    MovieDate=request.getParameter("Movies_Date"+q);
    Showtime=request.getParameter("Show_Time"+q);
    MovieRate=request.getParameter("Rate"+q);
    TotalSeats=request.getParameter("Total_Seats"+q);
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String s1="update movies_name set Movies_Name='"+MovieName+"',Theatre='"+theater+"',Movies_Date='"+MovieDate+"',Show_Time='"+Showtime+"',Rate='"+MovieRate+"',Total_Seats='"+TotalSeats+"' where id="+q+"";
             st.executeUpdate(s1);
             
             out.println("<script>alert(\"Record Update Success\");window.location= \"View_to_admin.jsp\";</script>");
    }
    catch(Exception e1)
    {
        out.println("Error:"+e1.getMessage());
    }
%>