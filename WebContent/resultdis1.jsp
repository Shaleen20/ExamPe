
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	//response.setHeader("pragma","no-cache");
	//response.setHeader("expires","0");

	if (session.getAttribute("username") == null) {
		response.sendRedirect("loginPage.jsp");
	}
%>


<!doctype html>
<html lang="en">

<head>
<style>
#overflowTest {
	background: #EAF0F1;
	color: white;
	padding: 15px;
	width: 100%;
	height: 600px;
	overflow: scroll;
	border: 1px solid #ccc;
}
</style>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<title>Exam-Pe-MCA-1</title>
</head>

<body style="background-color: #DAE0E2;">
	<!-- Image and text -->
	<div class="container my-4">
		<nav class="navbar navbar-light bg-dark">
			<a class="navbar-brand" href="/"> <img src="avatar.png"
				width="80" height="80" alt="">
			</a>
			<h4 class="text-white">Exam-Pe:MCA Semester-1(Foundation of
				Information Technology)-TEST</h4>
			<a href="logout.jsp" class="btn btn-primary btn-lg active"
				role="button" aria-pressed="true">Log out</a>
		</nav>
		


	</div>
	
	
	<%
		String name="";
	String branch="";
	try{
				int rollno=Integer.parseInt((String)session.getAttribute("username"));
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from signup where rollno="+rollno);
				if(rs.next()){
					name=rs.getString(1);
					branch=rs.getString(6);
				}
				
			}catch(Exception e){
				System.out.println(e);
			}
			%>
	
	
	
	
	<div class="container my-4">
	<h2 class="text-black">Name : <% out.println(name); %></h2><br>
	
	<h2 class="text-black">Branch : <% out.println(branch); %></h2><br>
	
		
		<h1 class="text-black">Semester : <% out.println("1"); %></h1><br>
		<table class="table table-borderless" border=1 width=100%>
			<thead class="thead-dark">
				<tr class="table-active">
					<td><strong>Student Roll-No</strong></td>
					<td><strong>Subject-1</strong></td>
					<td><strong>Subject-2</strong></td>
					<td><strong>Subject-3</strong></td>
					<td><strong>Subject-4</strong></td>
					<td><strong>Subject-5</strong></td>
				</tr>
			</thead>
			
			<%try{
				
				int rollno=Integer.parseInt((String)session.getAttribute("username"));
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from sem1 where rollno="+rollno);
				while(rs.next())
				{
					%>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getDouble(2) %></td>
			<td><%=rs.getDouble(3) %></td>
			<td><%=rs.getDouble(4) %></td>
			<td><%=rs.getDouble(5) %></td>
			<td><%=rs.getDouble(6) %></td>
			</tr>
			
			<%		
				}
				
			}catch(Exception e){
				System.out.println(e);
			}
			%>
			</table>
			
	</div>
	

	
	<div class="container my-4">
	
	<h1 class="text-black">Subject : <% out.println("1"); %></h1><br>

		<table class="table table-borderless" border=1 width=100%>
			<thead class="thead-dark">
				<tr class="table-active">
					<td><strong>Student Roll-No</strong></td>
					<td><strong>Unit-1</strong></td>
					<td><strong>Unit-2</strong></td>
					<td><strong>Unit-3</strong></td>
					<td><strong>Unit-4</strong></td>
					<td><strong>Unit-5</strong></td>
				</tr>
			</thead>
			
			<%try{
				int rollno=Integer.parseInt((String)session.getAttribute("username"));
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from sem1sub1 where rollno="+rollno);
				while(rs.next())
				{
					%>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getDouble(2) %></td>
			<td><%=rs.getDouble(3) %></td>
			<td><%=rs.getDouble(4) %></td>
			<td><%=rs.getDouble(5) %></td>
			<td><%=rs.getDouble(6) %></td>
			</tr>
			
			<%		
				}
				
			}catch(Exception e){
				System.out.println(e);
			}
			%>
			</table>
			
	</div>
	
	
	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>

</html>