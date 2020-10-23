<%
session.removeAttribute("username");
session.invalidate();
response.sendRedirect("adminLoginPage.jsp");

%>