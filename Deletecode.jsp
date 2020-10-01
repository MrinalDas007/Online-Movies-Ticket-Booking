<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    int q=0;
    q=Integer.parseInt(request.getParameter("d1"));
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="delete from movies_name where id="+q+"";
             st.executeUpdate(q1);
             out.println("<script>alert(\"Record Delete Success\");window.location= \"View_to_admin.jsp\";</script>");
    }
    catch(Exception e1)
    {
        out.println("Error:"+e1.getMessage());
    }
%>