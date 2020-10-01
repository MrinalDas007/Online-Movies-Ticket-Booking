<html>
   <head>
      <title>Reading Cookies</title>
   </head>
   
   <body>
      <center>
         <h1>Reading Cookies</h1>
      </center>
      <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            //out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               
               if((cookie.getName( )).compareTo("User_Name") == 0 || (cookie.getName( )).compareTo("Password") == 0 ) {
                  cookie.setMaxAge(0);
                  response.addCookie(cookie);
               }
            }
            response.sendRedirect("index.html");
         } else {
             response.sendRedirect("index.html");
         }
      %>
   </body>
   
</html>