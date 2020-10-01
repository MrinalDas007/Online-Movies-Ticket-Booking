<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String MovieName="";
    String theater="";
    String MovieDate="";
    String Showtime="";
    String MovieRate="";
    String TotalSeats="";
    MovieName=request.getParameter("Movies_Name");
    theater=request.getParameter("Theatre");
    MovieDate=request.getParameter("Movies_Date");
    Showtime=request.getParameter("Show_Time");
    MovieRate=request.getParameter("Rate");
    TotalSeats=request.getParameter("Total_Seats");
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="insert into movies_name(Movies_Name,Theatre,Movies_Date,Show_Time,Rate,Total_Seats)values('"+MovieName+"','"+theater+"','"+MovieDate+"','"+Showtime+"','"+MovieRate+"','"+TotalSeats+"')";
             st.executeUpdate(q1);
             out.println("<script>alert('Record Save Success')</script>");
             out.println("<script>window.location='dashboard_admin.html'</script>");
    }
    catch(Exception e1)
    {
        out.println("Error:"+e1.getMessage());
    }
    %>