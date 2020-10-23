<%@page import="javax.servlet.*" %>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>




<%
		// wait khane jara.....
	
	String rollno=request.getParameter("rollno");
	int rollno1=Integer.parseInt(rollno);
    String password=request.getParameter("password");
    
    
    try{
    	
    	Connection con=ConnectionProvider.getCon();
    	Statement st=con.createStatement();
    	ResultSet rs=st.executeQuery("select *from signup where rollno="+rollno1+" and password='"+password+"'");
    	if(rs.next()){
    		//HttpSession session=request.getSession();
    		session.setAttribute("username",rs.getString(2));
    		response.sendRedirect("page1.jsp");
    	}else{
    		response.sendRedirect("loginfail.jsp");
    	}
    	
    	
    	
    }catch(Exception e){
    	e.printStackTrace();
    }
    
    

%>
