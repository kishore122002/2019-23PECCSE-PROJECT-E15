<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%

String name=request.getParameter("name");
String feed=request.getParameter("feed");


/* String address="";
String city="";
String state="";
String country=""; */
try{
	Connection con=dbcon.create();
	PreparedStatement ps=con.prepareStatement("INSERT INTO `transport`.`feedback` VALUES(?,?)");
	ps.setString(1, name);
	ps.setString(2, feed);
	
	ps.executeUpdate();
	response.sendRedirect("sussful.jsp?msg=vaild");
}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("eror.jsp?msg=invaild");
}
%>