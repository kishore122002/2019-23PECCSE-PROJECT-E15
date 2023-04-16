<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>
<style>
BODY{
BACKGROUND-COLOR:#5DADE2 ;

}
table, td, th {
  border: 1px solid black;
}

table {
  width: 100%;
  border-collapse: collapse;
}
</style>
<body>
<br>
<center><button onclick="history.back()" class="btn btn-outline-warning">Go Back</button></center><br>
<center><br>
  <div class="container-fluid">  
<table class="table table-dark table-striped">
 <thead>
    <tr>
    <th scope="col">ID</th>
      <th scope="col">EMAIL</th>
  
      <th scope="col">TO ADDRESS</th>
        <th scope="col">TO DISTRICT</th>
      <th scope="col">WEIGTH</th>
      <th scope="col">DATE</th>
       <th scope="col">DELIVERY DATE</th>
       <th scope="col">STATUS</th>
            
            
    </tr>
  </thead>
 


	<% String emaill=session.getAttribute("umail").toString(); %>
       <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `transport`.`delihub` where tdistrict='"+emaill+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
   	  String name=rs.getString(2);  
    	String age=  rs.getString(6); 
    	String email=rs.getString(4);
    	String doctor=rs.getString(5);
String filename=rs.getString(7); 
    	
    	  
    	   
       %>
	

	


     <tr>
       <td style="text-align: center;"><%=rs.getString(1)%></td>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(5) %></td>
 <td style="text-align: center;"><%=  rs.getString(6) %></td>
  <td style="text-align: center;"><%=  rs.getString(7) %></td>
    <td style="text-align: center;"><%=  rs.getString(8) %></td>

    <%--   <td><a href="suggest.jsp?name=<%=rs.getString(2)%>&&age=<%=rs.getString(3)%>&&email=<%=rs.getString(4)%>&&doctor=<%=rs.getString(7)%>&&description=<%=rs.getString(8)%>"><button class="btn btn-primary">SUGGEST</button></a></td> --%>
     </tr>
	<%} %>






</table><br>
<a onclick="window.print();">  <button class="btn btn-primary">Print</button></a><br><br>
<a href="report.jsp">  <button class="btn btn-info"> Report</button></a><br><br>
</div>
</center>

</body>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
</body>
</html>