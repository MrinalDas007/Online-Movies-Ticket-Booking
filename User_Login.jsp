<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%  
    String flag1=request.getParameter("c1");
    //out.print(flag1);
    if(flag1!=null)
   {
   Cookie User_Name1 = new Cookie("User_Name", request.getParameter("User_Name"));
   Cookie Password1 = new Cookie("Password", request.getParameter("Password"));
   User_Name1.setMaxAge(60*60*24*365); 
   Password1.setMaxAge(60*60*24*365); 
   response.addCookie( User_Name1 );
   response.addCookie( Password1 );
    }
%>
<%
            String User_Name="";
            String Password="";
            User_Name=request.getParameter("User_Name");
            Password=request.getParameter("Password");
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
             out.println("<script>alert(\"Login Unsuccessful\");window.location= \"User_Login_check.jsp\";</script>");
            }
            catch(Exception e1)
                    {
                        out.println(e1.getMessage());
                    }
            %>