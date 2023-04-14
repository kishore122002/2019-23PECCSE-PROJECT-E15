<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");




String status="Delivery";
try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE transport.clientform set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("pickermain.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>