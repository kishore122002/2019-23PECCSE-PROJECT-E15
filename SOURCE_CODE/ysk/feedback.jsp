<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>
body{
background-image:url(images/9.jpg);
background-size:cover;

}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:black;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:white; 
}

table {
  
  width: 30%;
}
td {
  height: 50px;
   text-align: center;
   color:white;
}

</style>


</head>
<body>
<% String email=session.getAttribute("cmail").toString(); %>

<ul>
		
        <li><a href="clientmain.jsp">BACK</a></li>
     
  
</ul>

<br>
<center>
<div class="myDiv2">
FeedBack
</div>
<br><br>
<form action="cfeedback.jsp" method="post">

<table>

<tr>
<td>USER EMAIL</td>
<td><input type="show" value="<%=email%>" name="name" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>




<tr>
<td>FEEDBACK</td>
<td>
<input type="radio" name="feed" value=GOOD>GOOD
<input type="radio" name="feed" value=BETTER>BETTER
<input type="radio" name="feed" value=BEST>BEST
<br><br></td>
</tr>





<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:35px;border-radius: 10px;text-align:center; background-color: pink"><br><br></td>
</tr>

</table>
</form>



</center>


</body>
</html>