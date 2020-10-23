<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <title>Exam-Pe-Admin Login</title>
</head>

<body style="background-color: #DAE0E2;">
  <!-- Image and text -->
  <div class="container my-4">
    <nav class="navbar navbar-light bg-dark">
      <a class="navbar-brand" href="/">
        <img src="avatar.png" width="80" height="80" alt="">
      </a>
      <h1 class="text-white">Exam-Pe:Welcome to Admin Home Page</h1>
      <a href="adminlogout.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
    </nav>
  </div>
  <div class="container my-4"><br><br><br>
    <div class="col d-flex justify-content-center">
      <div class="card" style="width: 22rem;">
        <div class="card-body">
        <form class="form-signin" action="viewaction.jsp" >
          <div class="form-group">
            <label for="username"><strong>Enter Rollno</strong></label>
            <input type="text" class="form-control" name="rollno" required>
                       
                 </select> <label><b>Select Semester :</b>
              </label> <select name="sem"
				class="custom-select" required>
				<option selected>Select</option>
				<option value="1">Sem-1</option>
				<option value="2">Sem-2</option>
				<option value="3">Sem-3</option>
				<option value="4">Sem-4</option>
				<option value="5">Sem-5</option>
			</select> <br>
            
              </select> <label><b>Select Subject :</b>
              </label> <select name="subject"
				class="custom-select" required>
				<option selected>Select</option>
				<option value="1">Sub1</option>
				<option value="2">Sub2</option>
				<option value="3">Sub3</option>
				<option value="4">Sub4</option>
				<option value="5">Sub5</option>
			</select> <br><br>
            <center><input value="view" type="submit" class="btn btn-lg btn-primary btn-lg"  required><br>
            </center>
          </div>
          </form>
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