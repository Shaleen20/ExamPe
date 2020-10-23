<%
session.removeAttribute("username");
session.invalidate();
response.sendRedirect("loginPage.jsp");

%>