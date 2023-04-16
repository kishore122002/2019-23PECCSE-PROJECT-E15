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
background-image:url("image/t13.gif");
}

</style>
<body>
<% String id=request.getParameter("id");
String email=request.getParameter("email");
String taddtess=request.getParameter("taddress");
String tdistrict=request.getParameter("tdistrict");
String weigth=request.getParameter("weigth");
String pdate=request.getParameter("date");

%>
<center><br><br><br>
  <form action="deliverydateac.jsp" method="post">
    <lable> DELIVERY ID:</lable><br>
<input type="show" name="id"  value="<%=id %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>    

<input type="hidden" name="email"  value="<%=email %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;">
<lable> DELIVERY ADDRESS:</lable><br>
<input type="show" name="taddress"  value="<%=taddtess %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
<lable> DELIVERY DISTRICT:</lable><br>
<input type="show" name="tdistrict"  value="<%=tdistrict %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
    <lable> WEIGTH KG:</lable><br>
 <input type="show" name="weight" value="<%=weigth %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
   <lable> PICKUP DATE:</lable><br>
  <input type="show" name="pdate"  value="<%=pdate %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <lable> DELIVERY DATE:</lable><br>
 <input type="datetime-local" name="ddate" placeholder="Delivery Date"  style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
<input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
</form>
</center>
</body>
</html>