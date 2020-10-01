<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String User_Name="";
    String Email="";
    String Phone_No="";
    String City="";
    String Password="";
    User_Name=request.getParameter("Username");
    Email=request.getParameter("Email");
    Phone_No=request.getParameter("Phone");
    City=request.getParameter("City");
    Password=request.getParameter("Password");
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Movies","root","");
             Statement st=con.createStatement();
             String q1="insert into register(Username,Email,Phone,City,Password)values('"+User_Name+"','"+Email+"','"+Phone_No+"','"+City+"','"+Password+"')";
             st.executeUpdate(q1);
             out.println("<script>alert('Register Successfully')</script>");
             out.println("<script>window.location='register_form.html'</script>");
    }
    catch(Exception e1)
    {
        out.println("Error:"+e1.getMessage());
    }
    %>