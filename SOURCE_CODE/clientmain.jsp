<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image:url("image/t15.jpg");
  background-repeat:no-repeat;
  background-size:cover;
  margin: 0;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 15%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #1955a0;
  color: white;
}

li a:hover:not(.active) {
  background-color: #92a8d1;
  color: white;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#home">HOME</a></li>
   <li><a href="form.jsp">FORM</a></li>
  <li><a href="chargedetails.jsp">CHARGE DETAILS</a></li>
 
  <!-- <li><a href="deliverystatus.jsp">Delivery Status</a></li>  -->
   <li><a href="deliverytime.jsp">DELIVERY</a></li>
  <li><a href="feedback.jsp">FEEDBACK</a></li>
  <li><a href="logout.jsp">LOGOUT</a></li>







</ul>

<div style="margin-right:50%;height:10px;padding: 1px 91px;
}">
 
</div>

</body>
</html>
