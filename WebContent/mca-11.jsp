
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
      <h3 class="text-white">Exam-Pe:MCA Semester-1(Foundation of Information Technology)</h3>
      <a href="logout.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
    </nav>
  </div>
<div class="container" my-4>
    <h3><b>UNIT-1 Introduction To Computer & Hardware:</b></h3>
    <p><h4>Basic concepts of Information Technology, Concepts of Data and Information,<br>
        data processing, History of computers, organization of computers, input and output<br>
        devices, storage devices and file organization.<br>
        </h4></p>
    
<div style="padding:20px">
  <embed type="application/pdf" src="mca-11(notes).pdf" style="width:100% ;height:500px"></embed>
</div>

    <br>
    <h4>Video Lectues :</h4><br>
    <div class="row">
        <div class="col-sm-6">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/C_MsAyUgmMk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>      
        </div>
        <div class="col-sm-6">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/Qy064xFEW64" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>      
        </div>
    </div>
    <hr>
    <h4>Test of Unit-1 :</h4><br>
    <p><h3>Rules:</h3><br><strong>
    > There will a set of 10 muliple choice questions.<br>
    > You have to mark against the correct option and if you are unsure about any option then go for "None of these".<br>
    > There won't be any negative marking, and each question carries 1 mark.<br>
    > There won't be any time boundation.<br>
    > Once you are done with the test,you will be redirected to Unit-2.</strong><br></p>
    <a href="mca-11-test.jsp" class="btn btn-primary btn-lg"><strong>Test of Unit-1</strong></a>
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