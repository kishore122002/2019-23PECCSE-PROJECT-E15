<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-image:url("image/t5.jpeg");
background-repeat:no-repeat;
background-size:cover;
}
</style>
<body>
<form action="LoginAction.jsp" method="post">
<center><br><br><br><br><br><br>
<div class="mydiv">
<p> OFFICE LOGIN</p>
</div>
<i class="fa fa-user fa-x"><input type="email" name="email" placeholder="Enter  Name" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
  <i class="fa fa-key fa-x"><input type="password" name="pass" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
  </center>
  </form>
</body>
</html>