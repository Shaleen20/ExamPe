<%@ page import="Project.PasswordSend"%>

<%
	String number=request.getParameter("number");
	String password=request.getParameter("password");
	String msg=PasswordSend.sendPassword(number,password);
	//String msg="sent";
		System.out.println(msg);
	
			
		response.sendRedirect("sendpasswordsuccess.jsp?number="+number);
			%>