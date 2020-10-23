<%@page import="javax.servlet.*" %>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

	int c=0;
	String one=request.getParameter("1");
	String two=request.getParameter("2");
	String three=request.getParameter("3");
	String four=request.getParameter("4");
	String five=request.getParameter("5");
	String six=request.getParameter("6");
	String seven=request.getParameter("7");
	String eight=request.getParameter("8");
	String nine=request.getParameter("9");
	String ten=request.getParameter("10");
	if(one.equals("information"))
	{
		
		c++;
	}
	
	if(two.equals("Writing Tablet"))
	{
		
		c++;	
	}
	
	if(three.equals("Scanner"))
	{
		//out.println("Third answer correct!!!");
		c++;	
	}
	
	if(four.equals("Data in ROM is non-volatile, that is, it remains there even without electrical power"))
	{
		//out.println("Fourth answer correct!!!");
		c++;	
	}
	
	if(five.equals("EDSAC"))
	{
		//out.println("Fifth answer correct!!!");
		c++;	
	}
	
	if(six.equals("Electrically Erasable Programmable Read Only Memory"))
	{
		//out.println("Sixth answer correct!!!");
		c++;	
	}
	
	if(seven.equals("Worm"))
	{
		//out.println("Sixth answer correct!!!");
		c++;	
	}
	
	if(eight.equals("File transfer"))
	{
		//out.println("Sixth answer correct!!!");
		c++;	
	}
	
	if(nine.equals("ROM"))
	{
		//out.println("Sixth answer correct!!!");
		c++;	
	}
	
	if(ten.equals("Downloading"))
	{
		//out.println("Sixth answer correct!!!");
		c++;	
	}
	float res;
	res=(c*100)/10;
	
	//int rollno=Integer.parseInt((String)session.getAttribute("username"));
	int rollno=Integer.parseInt(request.getParameter("rollno"));
	//session.setAttribute("result",res);
	try{
		
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("update sem1sub1 set unit_1=? where rollno=? ");
		
		ps.setDouble(1,res);
		ps.setInt(2,rollno);
		
		System.out.println("inserted into sem1sub1");
		ps.executeUpdate();
		
	
		
		if(res>=60){
			
			PreparedStatement ps1=con.prepareStatement("update sem1 set subject1=? where rollno=? ");
			ps1.setDouble(1,20);
			ps1.setInt(2,rollno);
			ps1.executeUpdate();
			
			
						
			System.out.println("inserted into sem1");
		
			
		response.sendRedirect("result11.jsp?result="+res);
		}else{
			response.sendRedirect("resultfail.jsp?result="+res);
		}
		
	}catch(Exception e){
		e.printStackTrace();
		//response.sendRedirect("signupfail.jsp?");
		
	}
%>