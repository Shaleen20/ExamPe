
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
			<%
				String roll = (String) session.getAttribute("username");
			%>
			<!--  -->
			<h3 class="text-white">
				<br>User Roll :
				<%
					out.println(roll);
				%><br>
			</h3>
			<centre>
			<a href="logout.jsp" class="btn btn-lg btn-primary btn-lg"
				type="submit">Logout</a></centre>
		</nav>
	</div>
	<div class="container my-4">
		<form action="page1action.jsp" method="post">
			<label><b>Select your branch :</b></label> <select name="branch"
				class="custom-select" required>
				<option selected>Select</option>
				<option value="MCA">MCA</option>
			</select> <label><b>Select semester :</b></label> <select name="sem"
				class="custom-select" required>
				<option selected>Select</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select> <br>
			<br>
			<center>
				<button class="btn btn-lg btn-primary btn-lg" type="submit">Submit</button>

				</button>
				<br>
				<br>
			</center>


		</form>
		<center>
			<button class="btn btn-primary"
				onclick="window.location.href = 'resultdis1.jsp';">
				Score-Status</button>

		</center>

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