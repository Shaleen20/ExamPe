<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>

<%
	
	
	int rollno1=Integer.parseInt(request.getParameter("rollno"));
	
	

	
	try{
		
		Connection con=ConnectionProvider.getCon();
		
		PreparedStatement ps=con.prepareStatement("delete from signup where rollno="+rollno1);
		PreparedStatement ps1=con.prepareStatement("delete from sem1 where rollno="+rollno1);
		PreparedStatement ps2=con.prepareStatement("delete from sem1sub1 where rollno="+rollno1);
		
		
		ps.executeUpdate();
		ps1.executeUpdate();
		ps2.executeUpdate();
		
		%>
		
		<script>
		alert("record deleted successfully");
		
		<%  response.sendRedirect("adminHomePage.jsp");%>
		
		</script>
		
		
		
		<a href="">click here</a>
		<%
		
	
		
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("adminLoginPage.jsp");
		
	}
%>
