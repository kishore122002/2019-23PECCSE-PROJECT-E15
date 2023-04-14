<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css1/style.css">
	 <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="css/font-awesome.min.css">
          <link rel="stylesheet" href="css/font-awesome.css">
	</head>
	<style>
	body{
	background-image:url(images/10.jpg);
	background-size:1550px 700px;
	}
	
	</style>

	<body>

		<div class="wrapper" style="background-image: url('images/n10.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="image/t3.png" style= "margin:20px;" alt="">
				</div>
				<form action="clientlog" method="post">
				
					<h3>USERS LOGIN HERE!!</h3><br>
				
					<div class="form-wrapper">
					<input type="text" placeholder="User Name" name="email" class="form-control">
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="password" placeholder="Password" name="pass" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<center><button class ="btn btn-primary">Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button></center>
					<br>
					<center><a href="clientreg.jsp" class="btn btn-success">New User</a><a href="clientreg.jsp">Create New Account</a></center>
					
				</form>
			</div>
		</div>
		
	</body>
</html>