<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>PRM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" type="text/css"/>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
div.gallery {
    border: 1px solid #ccc;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 238px;
    height: 270px;    
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 18.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body background="images\bgadmin2.jpg">
     <h1 style="color:red;background-color: black;text-align: center;" >
            <marquee>
                
             Online Movies Ticket Booking
</marquee>
        </h1>           
        <div style="color: yellow;background-color: transparent;text-align: center;">
            <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">PRM</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.html">Home</a></li>
      <li><a href="About_us.html">About Us</a></li>
      <li><a href="Gallery.html">Movie Gallery</a></li>
      <li><a href="register_form.html">Register</a></li>
      <li><a href="checkcookies.jsp">Login</a></li>
    </ul>
  </div>
</nav>
            <h3 style="color: yellow">MEMBERS</h3>
            <br/>
            <br/>
            
            <div class="container-fluid">
            <div class="responsive">
  <div class="gallery">
      <img src="images\mrinal1.jpg" alt="Error" width="600" height="200">
      <div class="desc">MRINAL DAS<br/>Phn Number: 9836833051</div>
  </div>
            </div>
            <div class="responsive">
  <div class="gallery">
      <img src="images\puja.jpg" alt="Error" width="600" height="400">
      <div class="desc">PUJA SHAW<br/>Phn Number: 7003430159</div>
  </div>
</div>
            <div class="responsive">
  <div class="gallery">
      <img src="images\rajdeep_1.jpg" alt="Error">
      <div class="desc">RAJDEEP CHANDRA<br/>Phn Number: 8777734120</div>
  </div>
</div>
            <div class="responsive">
  <div class="gallery">
      <img src="images\rimpa.jpg" alt="Error">
      <div class="desc">RIMPA GHOSH<br/>Phn Number: 8001061089</div>
  </div>
</div>
                <div class="responsive">
  <div class="gallery">
      <img src="images\samarpita (2).jpg" alt="Error">
      <div class="desc">SAMARPITA SARKAR<br/>Phn Number: 8348734254</div>
  </div>
</div>
</div>
        </div>
</body>
</html>
