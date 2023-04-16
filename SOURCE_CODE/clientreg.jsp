<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="css/font-awesome.min.css">
          <link rel="stylesheet" href="css/font-awesome.css">
</head>
<style>
body{
background-image:url("image/t4.jpg");
   background-repeat:no-repeat;
    background-size:cover;
}
.myDiv {
    border: 5px outset #989084;
    background-color: #46556fe6;    
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
a{
text-decoration:none;
color:black;}
span{
color:red;
  
}
.myDiv2{
color:white;
font-variant: small-caps;
}
i{
font-size:20px;
color:skyblue;
margin:10px;
}

</style>


</head>
<body>


<center>

<div class="myDiv2">
 <span>R</span>egister <span>P</span>age
</div>
</center>
<br><br><br><br><br><br>
<form action="clientreg" method="post">
<center>

 
   
<i class="fa fa-user fa-1x"><input type="text" name="name" placeholder="ENTER  NAME" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
<i class="fa fa-envelope-square fa-1x">  <input type="email" name="email" placeholder="ENTER EMAIL" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
  <i class="fa fa-key fa-1x"><input type="password" name="pass" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
  <i class="fa fa-key fa-1x"><input type="password" name="cpass" placeholder="Con Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"></i><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>


</div>
  </center>
 </form>


</body>
</html>