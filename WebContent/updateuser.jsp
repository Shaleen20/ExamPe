
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	//response.setHeader("pragma","no-cache");
	//response.setHeader("expires","0");

	if (session.getAttribute("username") == null) {
		response.sendRedirect("adminLoginPage.jsp");
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
			<h4 class="text-white">Exam-Pe:UPDATE PORTAL</h4>
			<a href="adminlogout.jsp" class="btn btn-primary btn-lg active"
				role="button" aria-pressed="true">Log out</a>
		</nav>



	</div>
  <%try{
			
				
				int rollno=Integer.parseInt(request.getParameter("rollno"));
				
				Connection con=ConnectionProvider.getCon();
						Statement st=con.createStatement();
				
						ResultSet rs=st.executeQuery("select *from signup where rollno="+rollno);
						if(rs.next()){
							System.out.println(rollno);
							%>
							<div class="container">
							<form action="updateAction.jsp" method="post">
							<h2>Student Roll-No</h2>
							<input type="text" name="rollno" value="<%out.println(rollno); %>" readonly/>
							<hr>
							<h2>Name</h2>
							<input type="text" value="<%=rs.getString(1) %>" name="name"/>
							<hr>
							<h2>Mobile</h2>
							<input type="text" value="<%=rs.getString(3) %>" name="mobile"/>
							<hr>
							<h2>Email</h2>
							<input type="email" value="<%=rs.getString(4) %>" name="email"/>
							<center><button type="submit" class="button">Submit</button></center>
							</form>
							</div>
							<%
								}else{
									response.sendRedirect("viewaction.jsp");
								}
							}catch(Exception e){
								System.out.println(e);
							}
							%>
	

	</div>

	<br>
	<br>
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