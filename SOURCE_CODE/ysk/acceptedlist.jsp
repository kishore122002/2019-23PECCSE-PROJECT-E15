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
table { 
	width: 1000px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) { 
	background: #eee; 
	}

th { 
	background: #3498db; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 18px;
	}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table { 
	  	width: 100%; 
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}

}
</style>
<body>
<button onclick="goBack()" class="btn btn-primary" style="float:right;">Go Back</button>
<center>
  <div class="container-fluid">  
<table class="table-primary">
 <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">NUMBER</th>
      <th scope="col">From District</th>
            <th scope="col">TO ADDRESS</th>
            <th scope="col">TO District</th>
            <th scope="col"> Weight</th>
      <th scope="col">Date</th>

 <th scope="col">Charge</th>
<th scope="col">STATUS</th>   



 </tr>
  
  
  </thead>
 <%String paddresss=session.getAttribute("email").toString(); %>


	
       <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `transport`.`clientform` where fdistrict='"+paddresss+"' and status2='Accepted' ");
       
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
 <td style="text-align: center;"><%=  rs.getString(6) %></td>
 <td style="text-align: center;"><%=  rs.getString(8) %></td>
  <td style="text-align: center;"><%=  rs.getString(9) %></td>
 <td style="text-align: center;"><%=  rs.getString(11) %></td>
  <td style="text-align: center;"><%=  rs.getString(12) %></td>
      <td style="text-align: center;"><%=  rs.getString(13) %></td>
      
      <td><a href="delivery.jsp?id=<%=rs.getString(1)%>&&weight=<%=rs.getString(11)%>"><button class="btn btn-primary">delivery</button></a></td>
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