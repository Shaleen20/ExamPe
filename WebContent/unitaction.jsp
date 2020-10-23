<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>

<%
	
	
	int rollno1=Integer.parseInt(request.getParameter("rollno"));
	
	

	
	try{
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from sem1sub1 where rollno="+rollno1);
		if(rs.next()){
			int u1=rs.getInt(2);
			int u2=rs.getInt(3);
			int u3=rs.getInt(4);
			int u4=rs.getInt(5);
			int u5=rs.getInt(6);
			
			if(u1<60){
				response.sendRedirect("mca-11.jsp");
			}
			else if(u2<60){
				response.sendRedirect("mca-12.jsp");
			}
			else if(u3<60){
				response.sendRedirect("mca-13.jsp");
			}
			else if(u4<60){
				response.sendRedirect("mca-14.jsp");
			}
			else if(u5<60){
				response.sendRedirect("mca-15.jsp");
			}else{
				response.sendRedirect("mca2.jsp");
			}
			
			
		}
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("loginPage.jsp");
		
	}
%>
