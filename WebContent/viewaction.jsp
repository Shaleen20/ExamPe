
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
			<h4 class="text-white">Exam-Pe:ADMIN PORTAL</h4>
			<a href="adminlogout.jsp" class="btn btn-primary btn-lg active"
				role="button" aria-pressed="true">Log out</a>
		</nav>
		


	</div>
	<div class="container my-4">
		<table class="table table-borderless" border=1 width=100%>
			<thead class="thead-dark">
				<tr class="table-active">
					<td><strong>Student Roll-No</strong></td>
					<td><strong>Semester</strong></td>
					<td><strong>Subject</strong></td>
					<td><strong>Unit-1</strong></td>
					<td><strong>Unit-2</strong></td>
					<td><strong>Unit-3</strong></td>
					<td><strong>Unit-4</strong></td>
					<td><strong>Unit-5</strong></td>
					<td><strong>Update</strong></td>
					<td><strong>Delete</strong></td>
				</tr>
			</thead>

			<%
				try {
					// 

					int rollno = Integer.parseInt(request.getParameter("rollno"));
					String sem = request.getParameter("sem");
					String sub = request.getParameter("subject");
					Connection con = ConnectionProvider.getCon();
					Statement st = con.createStatement();

					System.out.println(sem + " " + sub);

					if (sem.equals("1")) {
						if (sub.equals("1")) {

							ResultSet rs = st.executeQuery("select *from sem1sub1 where rollno=" + rollno);
							if (rs.next()) {
			%>
			<td><%=rs.getInt(1)%></td>
			<td><%=sem%></td>
			<td><%=sub%></td>
			<td><%=rs.getDouble(2)%></td>
			<td><%=rs.getDouble(3)%></td>
			<td><%=rs.getDouble(4)%></td>
			<td><%=rs.getDouble(5)%></td>
			<td><%=rs.getDouble(6)%></td>
			<td><form class="form-signin" action="updateuser.jsp">
					<input name="rollno" type="hidden" value="<%=rollno%>"> <input
						value="update" type="submit" required>
				</form></td>
			<td><form class="form-signin" action="deleteuser.jsp">
					<input name="rollno" type="hidden" value="<%=rollno%>"> <input
						value="delete" type="submit" required>
				</form></td>


			</tr>

			<%
				}
						}
					} else {
						out.println();
						//response.sendRedirect("adminHomePage.jsp");
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			%>

		</table>

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