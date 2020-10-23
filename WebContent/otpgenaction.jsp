<%@ page import="Project.OtpSend"%>

<%
	String number=request.getParameter("mobile");
		//String otp=OtpSend.sendSms(number);
	String otp="1234";
		System.out.println(otp);
			
		response.sendRedirect("otp.jsp?ot="+otp+"&mobile="+number);
			%>