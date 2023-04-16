<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
     background: url(image/t11.jpg)no-repeat 0px 0px;

    background-size: 100% 100%;
    min-height: 795px;
	position:relative;
.myDiv {
  border: 5px outset #77c732;
  background-color: lightblue;    
  border-radius: 10px;
  width:500px;
  height:330px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
}
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #77c732; 
color:red;
}
.span{

}
</style>


</head>
<body>


<br><br><br><br><br><br><br><br><br><br>
<center>

</center>
<br><br>

<div class="myDiv">
<center>
  <form action="deliver" method="post">
  <input type="text" name="username" placeholder="STAFFNAME" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>

        <select id="appointment_for" name="tdistrict" required style="width:280px;height:40px;border-radius: 10px;text-align:center;">
          <option value="CHENNAI">CHENNAI</option>
          <option value="TRICHY">TRICHY</option>
          <option value="KANNIYAKUMARI">KANNIYAKUMARI</option>
          <option value="COIMBATORE">COIMBATORE</option>
          <option value="THIRUNELVELI">THIRUNELVELI</option>
          <option value="ERODE">ERODE</option>
</select><br><br>
  <input type="password" name="pass" placeholder="Password" id="password1" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="password" name="cpass" placeholder="Confirm Password" id="password2" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
 
  </form>
  </center>
</div>



</body>
                        <script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
</html>