<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%

String id=request.getParameter("id");
String email=request.getParameter("email");
String taddress=request.getParameter("taddress");
String tdistrict=request.getParameter("tdistrict");
String weigth=request.getParameter("weight");
String pdate=request.getParameter("pdate");
String ddate=request.getParameter("ddate");
String Status="Parcel Delivered";
/* String address="";
String city="";
String state="";
String country=""; */
try{
	Connection con=dbcon.create();
	PreparedStatement ps=con.prepareStatement("INSERT INTO transport.delihub VALUES(?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, email);
	ps.setString(3, taddress);
	ps.setString(4, tdistrict);
	ps.setString(5, weigth);
	ps.setString(6, pdate);
	ps.setString(7, ddate);
	ps.setString(8, Status);

	ps.executeUpdate();
	response.sendRedirect("deliverymain.jsp?msg=vaild");
}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invaild");
}
%>