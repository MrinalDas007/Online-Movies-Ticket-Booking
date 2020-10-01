<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
             String q1="select* from admin";
             ResultSet rs=st.executeQuery(q1);
             while(rs.next())
             {
                 if(User_Name.equals(rs.getString("Admin_Name"))&&Password.equals(rs.getString("Password")))
                 {
                     response.sendRedirect("dashboard_admin.html");
                 }
             }
             out.println("<script>alert('Login Unsuccessful')</script>");
            }
            catch(Exception e1)
                    {
                        out.println(e1.getMessage());
                    }
            %>