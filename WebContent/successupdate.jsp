
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

<title>Exam-Pe</title>
</head>

<body style="background-color: #DAE0E2;">
	<!-- Image and text -->
	<div class="container my-4">
		<nav class="navbar navbar-light bg-dark">
			<a class="navbar-brand" href="/"> <img src="avatar.png"
				width="80" height="80" alt="">
			</a>
			<h4 class="text-white">Exam-Pe:Updated details</h4>
			<a href="adminlogout.jsp" class="btn btn-primary btn-lg active"
				role="button" aria-pressed="true">Log out</a>
		</nav>
		
			<div class="container my-4"> 
        <!-- in case of successfull verification-->
        <div class="alert alert-success" role="alert">
            <center>Congratulations!!!You have successfully updated!!<br></center>
        </div>
          <table class="table table-borderless" border=1 width=100%>
			<thead class="thead-dark">
				<tr class="table-active">
				<td><strong>Name</strong></td>
					<td><strong>Roll-No</strong></td>
					<td><strong>Mobile</strong></td>
					<td><strong>Email</strong></td>
					<td><strong>Branch</strong></td>
				</tr>
			</thead>
			
			<%try{
				
				int rollno=Integer.parseInt((String)request.getParameter("rollno"));
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from signup where rollno="+rollno);
				if(rs.next())
				{
					%>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getInt(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(6) %></td>
			</tr>
			</table>
			<center><a href="adminHomePage.jsp">Home</a></center>
			<%		
				}else{
					response.sendRedirect("viewaction.jsp?rollno="+rollno);
				}
				
			}catch(Exception e){
				System.out.println(e);
			}
			%>
			
			
			
			
			
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