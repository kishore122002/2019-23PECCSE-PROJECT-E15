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
table, td, th {
  border: 1px solid black;
  text-align:center;
}

table {
  width: 100%;
  border-collapse: collapse;
}
</style>
<body>
<center><button onclick="goBack()" class="btn btn-warning">Go Back</button></center><br><br>
<center>
  <div class="container-fluid">  
<table class="table-success">
 <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">BRANCH NAME</th>
      <th scope="col">FILENAME</th>
      <th scope="col">FILEKEY</th>
      <th scope="col">STATUS </th>
      

  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `transport`.`upload` where detail='Pickdetail' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String id=rs.getString(1);  
    	String branch=  rs.getString(2); 
    	String filename=rs.getString(3);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(1)%></td>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%= rs.getString(10) %></td>
     

      <td><a href="Download.jsp?filename=<%=rs.getString(3)%>&&fkey=<%=rs.getString(10)%>"><button class="btn btn-primary">Download</button></a></td>
     </tr>
	<%} %>






</table>

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

</html>