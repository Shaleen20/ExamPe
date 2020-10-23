<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>

<%
	
	String name=request.getParameter("name");
	int rollno1=Integer.parseInt(request.getParameter("rollno"));
	String mobile=request.getParameter("mobile");
	
	String email=request.getParameter("email");
	
	try{
		
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("update signup set name='"+name+"',mobile='"+mobile+"',email='"+email+"' where rollno="+rollno1);
		
		
		ps.executeUpdate();
		
		response.sendRedirect("successupdate.jsp?rollno="+rollno1);
		
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("adminLoginPage.jsp");
		
	}
%>
