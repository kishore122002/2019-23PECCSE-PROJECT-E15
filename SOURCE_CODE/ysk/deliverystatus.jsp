<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import=" dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@include file="clientmain.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, td, th {
  border: 1px solid black;
  color:red;
}

table {
  width: 80%;
  margin :15%;
  border-collapse: collapse;
   color:white;
}
</style>
<body>

<% String email=session.getAttribute("cmail").toString(); %>

<table>
  <tr>
    <th>ID </th>
    <th>EMAIL</th>
    <th>TO ADDRESS</th>
    

    <th>TO DISTRICT</th>
        <th>STATUS</th>
<th>PICKUP DATE</th>
<th>DELIVERY DATE</th>
   
      
</tr>

<%
       
       Connection con1;
       
       
       con1=dbcon.create();
       PreparedStatement ps2=con1.prepareStatement("SELECT * FROM `transport`.`clientform` where email='"+email+"' and status='packed'");
       
       ResultSet rs1=ps2.executeQuery();
       
       while(rs1.next())
       {
    	  /* String name=rs.getString(2);  
    	String age=  rs.getString(6); 
    	String emails=rs.getString(4);
    	String doctor=rs.getString(5);
String filename=rs.getString(6);
    	 */
    	 String name=rs1.getString(2);  
     	String age=  rs1.getString(6); 
     	String emails=rs1.getString(4);
     	String doctor=rs1.getString(5);
 String filename=rs1.getString(6);
    	   
       %>
     <tr>
     <td style="text-align: center;"><%=rs1.getString(1)%></td>
      <td style="text-align: center;"><%= rs1.getString(3) %></td>
       <td style="text-align: center;"><%=  rs1.getString(8) %></td>
 <td style="text-align: center;"><%=  rs1.getString(9) %></td>
  <td style="text-align: center;"><%=  rs1.getString(12) %></td>
 <td style="text-align: center;"><%=  rs1.getString(14) %></td>

 </tr>
 	<%} %>


 <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `transport`.`clientform` where email='"+email+"' and status='Delivery'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String name=rs.getString(2);  
    	String age=  rs.getString(6); 
    	String emails=rs.getString(4);
    	String doctor=rs.getString(5);
String filename=rs.getString(6);
    	
    	  
    	   
       %>
	 <tr>
       <td style="text-align: center;"><%=rs.getString(1)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(8) %></td>
 <td style="text-align: center;"><%=  rs.getString(9) %></td>
 <td style="text-align: center;"><%=  rs.getString(14) %></td>
  <td style="text-align: center;"><%=  rs.getString(12) %></td>
 </tr>

 	<%} %>
 	<%
       
       Connection con2;
       
       
       con2=dbcon.create();
       PreparedStatement ps1=con.prepareStatement("SELECT * FROM `transport`.`delihub` where email='"+email+"' and status='Paechel Delivered'");
       
       ResultSet rs2=ps1.executeQuery();
       
       while(rs2.next())
       {
    	  String name=rs2.getString(2);  
    	String age=  rs2.getString(6); 
    	String emails=rs2.getString(4);
    	String doctor=rs2.getString(5);
String filename=rs2.getString(6);
    	
    	  
    	   
       %>
	 <tr>
       <td style="text-align: center;"><%=rs2.getString(1)%></td>
      <td style="text-align: center;"><%= rs2.getString(2) %></td>
       <td style="text-align: center;"><%=  rs2.getString(3) %></td>
 <td style="text-align: center;"><%=  rs2.getString(4) %></td>
 <td style="text-align: center;"><%=  rs2.getString(8) %></td>
  <td style="text-align: center;"><%=  rs2.getString(6) %></td>
   <td style="text-align: center;"><%=  rs2.getString(7) %></td>
 </tr>

 	<%} %>

     </table>
</body>
</html>