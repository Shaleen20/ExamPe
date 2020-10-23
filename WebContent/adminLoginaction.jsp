<%@page import="javax.servlet.*" %>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String username=request.getParameter("name");
String password=request.getParameter("password");
if((username.equals("Shaleen")) && (password.equals("admin")))
{
	session.setAttribute("username",username);
	response.sendRedirect("adminHomePage.jsp");
}
else
{
	response.sendRedirect("adminLoginFailed.jsp");
}
%>