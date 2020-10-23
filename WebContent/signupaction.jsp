<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>

<%
	
	String rollno=request.getParameter("rollno");
	int rollno1=Integer.parseInt(rollno);
	String mobile=request.getParameter("mobile");

	String name=request.getParameter("name");
	
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String branch=request.getParameter("branch");
	System.out.println("outside try");
	
	try{
		
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
		
		
		System.out.println("data is inserting....");
		
		ps.setString(1,name);
		ps.setInt(2,rollno1);
		ps.setString(3,mobile);
		ps.setString(4,email);
		ps.setString(5,password);
		ps.setString(6,branch);
		
		ps.executeUpdate();
		
		System.out.println("data is inserted into signup");
		
		
		PreparedStatement ps1=con.prepareStatement("insert into sem1 values(?,?,?,?,?,?)");
		
		ps1.setInt(1,rollno1);
		ps1.setDouble(2,0.0);
		ps1.setDouble(3,0.0);
		ps1.setDouble(4,0.0);
		ps1.setDouble(5,0.0);
		ps1.setDouble(6,0.0);
		
		ps1.executeUpdate();
		
PreparedStatement ps2=con.prepareStatement("insert into sem1sub1 values(?,?,?,?,?,?)");
		
		ps2.setInt(1,rollno1);
		ps2.setDouble(2,0.0);
		ps2.setDouble(3,0.0);
		ps2.setDouble(4,0.0);
		ps2.setDouble(5,0.0);
		ps2.setDouble(6,0.0);
		
		ps2.executeUpdate();
		
		System.out.println("data is inserted into sem1");
		
		response.sendRedirect("otpverifysuccess.jsp");
		
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("signupfail.jsp?");
		
	}
	
	








%>
