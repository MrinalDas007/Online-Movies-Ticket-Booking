<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String Admin_Name="";
    String Password="";
    Admin_Name=request.getParameter("Admin_Name");
    Password=request.getParameter("Password");
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="insert into admin(Admin_Name,Password)values('"+Admin_Name+"','"+Password+"')";
             st.executeUpdate(q1);
             out.println("<script>alert('Admin Added Successfully')</script>");
             out.println("<script>window.location='Admin.html'</script>");
    }
    catch(Exception e1)
    {
        out.println("Error:"+e1.getMessage());
    }
    %>