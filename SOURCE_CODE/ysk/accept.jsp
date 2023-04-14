<%@ page import="dbcon.dbcon" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>


<%
	String id=request.getParameter("id");
	
	String status="Accepted";
	try{
		
		Connection con=dbcon.create();
		Statement st=con.createStatement();
		st.executeUpdate("UPDATE `transport`.`clientform` set status2='" + status + "' where id='" + id + "' ");
		response.sendRedirect("chargedetails.jsp");
	
	}
	catch(Exception e){
		response.sendRedirect("error.jsp?inval id");
		System.out.println(e);
	}
%>