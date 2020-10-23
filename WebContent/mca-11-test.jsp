
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
      <a class="navbar-brand" href="index.jsp">
        <img src="avatar.png" width="80" height="80" alt="">
      </a>
      <h4 class="text-white">Exam-Pe:MCA Semester-1(Foundation of Information Technology)-TEST</h4>
      <a href="logout.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log out</a>
    </nav>
  </div>
  <div class="container my-4">
  <form action="resultcal1.jsp" method="post">
    <strong>1. Which of the following is the product of dataprocessing?</strong><br>
    <!--answer:a-->
    <input type="radio" name="1" value="information">
    <label for="information">information</label><br>
    <input type="radio" name="1" value="data">
    <label for="data">data</label><br>
    <input type="radio" name="1" value="software program">
    <label for="software program">software program</label><br>
    <input type="radio" name="1" value="system">
    <label for="system">system</label><br>
    <input type="radio" name="1" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>2. A device for converting handwritten impressions into coded characters & positional coordinates for input
      to a computer is?</strong><br>
   
    <input type="radio" name="2" value="Touch Panel">
    <!--answer:d-->
    <label for="Touch Panel">Touch Panel</label><br>
    <input type="radio" name="2" value="Mouse">
    <label for="Mouse">Mouse</label><br>
    <input type="radio" name="2" value="Wand">
    <label for="Wand">Wand</label><br>
    <input type="radio" name="2" value="Writing Tablet">
    <label for="Writing Tablet">Writing Tablet</label><br>
    <input type="radio" name="2" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>3. A light sensitive device that converts drawing, printed text or other images into digital form
      is?</strong><br>
    <!--answer:c-->
    <input type="radio" name="3" value="Keyboard">
    <label for="Keyboard">Keyboard</label><br>
    <input type="radio" name="3" value="Plotter">
    <label for="Plotter">Plotter</label><br>
    <input type="radio" name="3" value="Scanner">
    <label for="Scanner">Scanner</label><br>
    <input type="radio" name="3" value="OMR">
    <label for="OMR">OMR</label><br>
    <input type="radio" name="3" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>4. What characteristic of read-only memory (ROM) makes it useful?</strong><br>
    <!--answer:B-->
    <input type="radio" name="4" value="ROM information can be easily updated">
    <label for="ROM information can be easily updated">ROM information can be easily updated</label><br>
    <input type="radio" name="4"
      value="Data in ROM is non-volatile, that is, it remains there even without electrical power">
    <label for="Data in ROM is non-volatile, that is, it remains there even without electrical power">Data in ROM is
      non-volatile, that is, it remains there even without electrical power</label><br>
    <input type="radio" name="4" value="ROM provides very large amounts of inexpensive data storage">
    <label for="ROM provides very large amounts of inexpensive data storage">ROM provides very large amounts of
      inexpensive data storage</label><br>
    <input type="radio" name="4" value="ROM chips are easily swapped between different brands of computers">
    <label for="ROM chips are easily swapped between different brands of computers">ROM chips are easily swapped between
      different brands of computers</label><br>
    <input type="radio" name="4" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>5. Which of the following is first generation of computer?</strong><br>
    <!--answer:a-->
    <input type="radio" name="5" value="EDSAC">
    <label for="EDSAC">EDSAC</label><br>
    <input type="radio" name="5" value="IBM-1401">
    <label for="IBM-1401">IBM-1401</label><br>
    <input type="radio" name="5" value="CDC-1604">
    <label for="CDC-1604">CDC-1604</label><br>
    <input type="radio" name="5" value="ICL-2900">
    <label for="ICL-2900">ICL-2900</label><br>
    <input type="radio" name="5" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>6. EEPROM stands for?</strong><br>
    <!--answer:a-->
    <input type="radio" name="6" value="Electrically Erasable Programmable Read Only Memory">
    <label for="Electrically Erasable Programmable Read Only Memory">Electrically Erasable Programmable Read Only
      Memory</label><br>
    <input type="radio" name="6" value="Easily Erasable Programmable Read Only Memory">
    <label for="Easily Erasable Programmable Read Only Memory">Easily Erasable Programmable Read Only Memory</label><br>
    <input type="radio" name="6" value="Electronic Erasable Programmable Read Only Memory">
    <label for="Electronic Erasable Programmable Read Only Memory">Electronic Erasable Programmable Read Only
      Memory</label><br>
    <input type="radio" name="6" value="Electronic Easily Programmable Read Only Memory">
    <label for="Electronic Easily Programmable Read Only Memory">Electronic Easily Programmable Read Only
      Memory</label><br>
    <input type="radio" name="6" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>7. A self replicating program, similar to a virus which was taken from a 1970s science fiction
      novel by John Bruner entitled the Shockwave Rider is?</strong><br>
    <!--answer:D-->
    <input type="radio" name="7" value="Bug">
    <label for="Bug">Bug</label><br>
    <input type="radio" name="7" value="Vice">
    <label for="Vice">Vice</label><br>
    <input type="radio" name="7" value="Lice">
    <label for="Lice">Lice</label><br>
    <input type="radio" name="7" value="Worm">
    <label for="Worm">Worm</label><br>
    <input type="radio" name="7" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>8. To move a copy of file from one computer to another over a communication channel is
      called?</strong><br>
    <!--answer:a-->
    <input type="radio" name="8" value="File transfer">
    <label for="File transfer">File transfer</label><br>
    <input type="radio" name="8" value="File encryption">
    <label for="File encryption">File encryption</label><br>
    <input type="radio" name="8" value="File modification">
    <label for="File modification">File modification</label><br>
    <input type="radio" name="8" value="File copying">
    <label for="File copying">File copying</label><br>
    <input type="radio" name="8" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>9. What kind of memory is both static and non -volatile?</strong><br>
    <!--answer:B-->
    <input type="radio" name="9" value="RAM">
    <label for="RAM">RAM</label><br>
    <input type="radio" name="9" value="ROM">
    <label for="ROM">ROM</label><br>
    <input type="radio" name="9" value="BIOS">
    <label for="BIOS">BIOS</label><br>
    <input type="radio" name="9" value="CACHE">
    <label for="CACHE">CACHE</label><br>
    <input type="radio" name="9" value="None of these">
    <label for="None of these">None of these</label><br>

    <strong>10. The process of transferring files from a computer on the Internet to your computer is
      called?</strong><br>
    <!--answer:a-->
    <input type="radio" name="10" value="Downloading">
    <label for="Downloading">Downloading</label><br>
    <input type="radio" name="10" value="uploading">
    <label for="uploading">uploading</label><br>
    <input type="radio" name="10" value="FTP">
    <label for="FTP">FTP</label><br>
    <input type="radio" name="10" value="JPEG">
    <label for="JPEG">JPEG</label><br>
    <input type="radio" name="10" value="None of these">
    <label for="None of these">None of these</label><br>
   
   <%
   
   	String rollno=(String)session.getAttribute("username");
   %>
   
   <input type="hidden" name="rollno" value="<%=rollno %>" class="form-control" placeholder="Password">
   
   <div class="text-center"><input type="submit" value="Done" class="btn btn-primary btn-lg active"/></div>
    </form>
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