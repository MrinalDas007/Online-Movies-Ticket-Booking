<%-- 
    Document   : login_chck
    Created on : 27 Jul, 2018, 4:28:51 PM
    Author     : MRINAL DAS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            String User_Name=request.getParameter("User_Name");
            String Password=request.getParameter("Password");
                 if(User_Name.equals("Mrinal")&& Password.equals("1234"))
                 {
                     out.println("<script>alert(\"Login successful\");window.location= \"doctor_reg.html\";</script>");
                 }
                 else
             out.println("<script>alert(\"Login Unsuccessful\");window.location= \"admin_login.html\";</script>");
%>
