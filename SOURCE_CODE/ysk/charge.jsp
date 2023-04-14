<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

body {
font-family: "Roboto", Helvetica, Arial, sans-serif;
font-weight: 100;
font-size: 12px;
line-height: 30px;
color: #777;
background: #fff
}
.container {
max-width: 400px;
width: 100%;
margin: 0 auto;
position: relative
}
#contactus {
font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
background: #F9F9F9;
padding: 25px;
margin: 150px 0;
box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24)
}
#contactus {}
#contactus h3 {
display: block;
font-size: 30px;
font-weight: 300;
margin-bottom: 10px
}
#contactus h4 {
margin: 5px 0 15px;
display: block;
font-size: 13px;
font-weight: 400
}
fieldset {
border: medium none !important;
margin: 0 0 10px;
min-width: 100%;
padding: 0;
width: 100%
}
#contactus input[type="text"],
#contactus input[type="email"],
#contactus input[type="tel"],
#contactus input[type="url"],
#contactus textarea {
width: 100%;
border: 1px solid #ccc;
background: #FFF;
margin: 0 0 5px;
padding: 10px
}
#contactus input[type="text"]:hover,
#contactus input[type="email"]:hover,
#contactus input[type="tel"]:hover,
#contactus input[type="url"]:hover,
#contactus textarea:hover {
-webkit-transition: border-color 0.3s ease-in-out;
-moz-transition: border-color 0.3s ease-in-out;
transition: border-color 0.3s ease-in-out;
border: 1px solid #aaa
}
#contactus textarea {
height: 100px;
max-width: 100%;
resize: none
}
#contactus button[type="submit"] {
cursor: pointer;
width: 100%;
border: none;
background: #f0715f;
color: #FFF;
margin: 0 0 5px;
padding: 10px;
font-size: 15px
}
#contactus button[type="submit"]:hover {
background: #f07150;
-webkit-transition: background 0.3s ease-in-out;
-moz-transition: background 0.3s ease-in-out;
transition: background-color 0.3s ease-in-out
}
#contactus button[type="submit"]:active {
box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5)
}
#contactus input:focus,
#contactus textarea:focus {
outline: 0;
border: 1px solid #aaa
}
::-webkit-input-placeholder {
color: #888
}
:-moz-placeholder {
color: #888
}
::-moz-placeholder {
color: #888
}
:-ms-input-placeholder {
color: #888
}










</style>














</head>
<body>
 










<%


String d= request.getParameter("weight");

String d2= request.getParameter("id");







%>

<div class="container">
<form id="contactus" action="Charge" method="post">
<h3>Update Charge</h3>
<fieldset> <input placeholder="name" type="text" tabindex="1" name="weight" value="<%=d%>" required autofocus> </fieldset>

<fieldset> <input placeholder="Enter Amount" type="hidden" name="id" value="<%=d2%>" tabindex="2" required> </fieldset>


<fieldset> <input placeholder="Enter Amount" type="text" name="amount" tabindex="2" required> </fieldset>

<fieldset> <button name="submit" type="submit" id="contactus-submit" data-submit="...Sending"><i id="icon" class=""></i>Update</button> </fieldset>
</form>
</div> 



 <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js?ver=1.6.4' type='text/javascript'/>
 

</body>
</html>