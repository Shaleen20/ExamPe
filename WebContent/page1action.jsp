<%@page import="javax.servlet.*"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<%
	String branch = request.getParameter("branch");
	String sem = request.getParameter("sem");
		
	System.out.println(branch);
	System.out.println(sem);
	if (branch.equals("MCA")){

		if (sem.equals("1")){
			response.sendRedirect("mca1.jsp");
		} else if (sem == "2") {
			response.sendRedirect("mca2.jsp");
		} else if (sem == "3") {
			response.sendRedirect("mca3.jsp");
		} else if (sem == "4") {
			response.sendRedirect("mca4.jsp");
		} else if (sem == "5") {
			response.sendRedirect("mca5.jsp");
		}

	}else{
		response.sendRedirect("page1.jsp");
	}
%>