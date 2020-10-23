
<%
	
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	//response.setHeader("pragma","no-cache");
	//response.setHeader("expires","0");

	if(session.getAttribute("username")==null){
		response.sendRedirect("loginPage.jsp");
	}

%>


<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <title>Exam-Pe-MCA-1</title>
</head>

<body style="background-color: #DAE0E2;">
  <!-- Image and text -->
  <div class="container my-4">
    <nav class="navbar navbar-light bg-dark">
      <a class="navbar-brand" href="/">
        <img src="avatar.png" width="80" height="80" alt="">
      </a>
      <h1 class="text-white">Exam-Pe:MCA Semester-1</h1>
      <a href="logout.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
    </nav>
  </div>
  <div class="container my-4">
    <div class="row">
      <div class="col-sm-6">
        <h2>Download Semester-1 syllabus</h2>
        <a href="mca-1-syllabus-pdf.pdf" download="MCA-1 Syllabus"><button type="button"
            class="btn btn-primary">Syllabus</button></a>
      </div>
      <div class="col-sm-6">
        <h2>Last years' question papers :</h2>
        <a href=".pdf" download="MCA-1 Last Year Question papers"><button type="button"
            class="btn btn-primary">Download</button></a><br>
      </div>
    </div>
    <hr>
    
    <%
    	String rollno=(String)session.getAttribute("username");
    		
    %>
    
    <form action=".jsp" method="post">
      <label>
        <h2>Select Subject :</h2>
      </label>
      <a href="unitaction.jsp?rollno=<%=rollno %>" class="btn btn-primary btn-lg btn-block"><strong>FOUNDATION OF INFORMATION
          TECHNOLOGY</strong></a>
      <br><br>
      <a href="mca-12.html" class="btn btn-primary btn-lg btn-block"><strong>MATHEMATICAL FOUNDATION OF COMPUTER
          SCIENCE</strong></a>
      <br><br>
      <a href="mca-13.html" class="btn btn-primary btn-lg btn-block"><strong>PROGRAMMING & PROBLEM SOLVING IN
          C</strong></a>
      <br><br>
      <a href="mca-14.html" class="btn btn-primary btn-lg btn-block"><strong>COMPUTER ORGANIZATION &
          ARCHITECTURE</strong></a>
      <br><br>
      <a href="mca-15.html" class="btn btn-primary btn-lg btn-block"><strong>PROFESSIONAL COMMUNICATION IN
          ENGLISH</strong></a>
      <br><br>
    </form>
    <hr>

  </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
</body>

</html>