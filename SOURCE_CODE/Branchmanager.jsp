<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">

<style>
body{
background-image:url("image/t20.jpg");
background-size: 100%;
}
.myDiv {
  border: 5px outset #a76a6a;
  background-color: #ab766b17;    
  border-radius: 10px;
  width:400px;
  height:250px;
  margin: auto;
  padding-top:30px;
  /* box-shadow: 25px 20px 20px #888888; */
  
}
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:#331100; 
}

</style>


</head>
<body>

<br><br><br>
<center>
<div class="myDiv2">
BRANCH MANAGER LOGIN PAGE
</div>
</center>
<br><br><br><br><br><br>
<center>
<div class="myDiv">
 <form action="manage" method="post"> 



 <lable>BRANCH</lable><br>
    <select id="appointment_for" name="fdistrict" required style="width:280px;height:40px;border-radius: 10px;text-align:center;">
          <option value="CHENNAI">CHENNAI</option>
          <option value="TRICY">TRICY</option>
          <option value="KANYAKUMARI">KANYAKUMARI</option>
          <option value="COIMBATORE">COIMBATORE</option>
          <option value="THIRUNELVELI">THIRUNELVELI</option>
          <option value="ERODE">ERODE</option>
</select><br><br>

  <input type="text" name="regid" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;" required><br><br>
  <input type="submit" value="Login" class="btn btn-primary" style="width:100px;height:40px;border-radius: 10px;"><br><br>
 

  


 </form>
  </div>
 </center>

</body>
</html>