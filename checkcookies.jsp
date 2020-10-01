<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Cookies Page</title>
              <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         String User_Name="";
         String Password="";
         int flag1=0;
         int flag2=0;
// Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            //out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               if(cookie.getName().equals("User_Name"))
               {
                    User_Name=cookie.getValue();
                    flag1=1;
               }
                 if(cookie.getName().equals("Password"))
               {
                    Password=cookie.getValue();
                    flag2=1;
               }
            }
            if(flag1==1 && flag2==1)
            {
                try
            {
                Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movies","root","");
             Statement st=con.createStatement();
             String q1="select* from register";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 if(User_Name.equals(rs.getString("Username"))&&Password.equals(rs.getString("Password")))
                 {
                     response.sendRedirect("Success1.jsp");
                 }
             }
             //out.println("<script>alert('Login Unsuccessful')</script>");
             response.sendRedirect("User_Login_check.jsp");
            }
            catch(Exception e1)
                    {
                        out.println(e1.getMessage());
                    }
            }
            else
                response.sendRedirect("User_Login_check.jsp");
         } else {
            //out.println("<h2>No cookies founds</h2>");
            response.sendRedirect("User_Login_check.jsp");
         }
      %>
    </head>
    <body>
    </body>
</html>
