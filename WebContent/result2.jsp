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
      <h4 class="text-white">Exam-Pe:MCA Semester-1(Foundation of Information Technology)-TEST</h4>
      <a href="logout.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
    </nav>
  </div>
<div class="container my-4">
    <!-- in case of successfull verification-->
    <div class="alert alert-warning" role="alert">
        Congratulations!!!You scored <% %>% in your test
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card text-center text-white bg-dark">
                <div class="card-body">
                    <h5 class="card-title">Not Satisfied???</h5>
                    <a href="mca-12.jsp" class="btn btn-primary">Try Again</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card text-center text-white bg-dark">
                <div class="card-body">
                    <h5 class="card-title">Ready for Unit-3???</h5>
                    <a href="mca-13.jsp" class="btn btn-primary">Unit-3</a>
                </div>
            </div>
        </div>
    </div>


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