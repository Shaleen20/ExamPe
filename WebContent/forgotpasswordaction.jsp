<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
	String number=request.getParameter("mobile");	
	String rollno=request.getParameter("rollno");
	int rollno1=Integer.parseInt(rollno);
		try{
			
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from signup where mobile='"+number+"' and rollno="+rollno1+"");
			if(rs.next()){
				
				String pass=rs.getString(5);
				String num=rs.getString(3);
				response.sendRedirect("sendpassword.jsp?number="+num+"&password="+pass);
				
			}else{
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	






%>

