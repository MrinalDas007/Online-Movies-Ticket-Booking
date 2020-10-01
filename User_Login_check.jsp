<html>
    <head>
        <title>User Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") === true){
                alert("Checkbox is checked.");
                    <%
                        String flag1="False";
                        %>
            }
            else if($(this).prop("checked") === false){
                alert("Checkbox is unchecked.");
                <%
                        flag1="True";
                        %>
            }
        });
    });
</script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body background="images\bgadmin2.jpg">
        <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
        <h1 style="color:red;background-color:black;text-align: center;" >
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
      <li class="active"><a href="checckcookies">Login</a></li>
    </ul>
  </div>
</nav>
            <br/><br/><br/>
         <h1>User Login Form</h1>
         <form action="User_Login.jsp" method="post" class="form-horizontal" action="/action_page.php">
  <div class="form-group">
    <label class="control-label col-sm-2" for="text">User Name:</label>
    <div class="col-sm-8">
        <input type="text" class="form-control" name="User_Name" placeholder="Enter User Name"><br/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="text">Password:</label>
    <div class="col-sm-8"> 
      <input type="password" class="form-control" name="Password" placeholder="Enter Password"><br/>
    </div>
  </div>
      <div class="checkbox">
        <label><input type="checkbox" name="c1"> Remember me</label>
      </div>
      <button type="submit" class="btn btn-primary">Login In</button>
      <br/>Haven't Registered?
            <br/>Then Register Below.<br/>
            <strong><a href="register_form.html">Sign Up</a></strong>
        </div>  
</form>
    </body>
</html>
