 <!DOCTYPE html>
<html>
<head>
  <title>Topic | Survey System</title>
  <link rel="stylesheet"> 
  </head>



 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
 {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {
	margin: 0 10px;
	position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
	
	
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}


footer {
	position: fixed;
	width: 100%;
	left: 0;
	bottom: 0;
	background-color: lightskyblue;
	color: white;
	text-align: center;
}
 
 .button {
  position: absolute;
  top: 85%;
  left: 90%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  color: black;
  font-size: 16px;
  padding: 16px 30px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

 .button:hover {
  background-color: black;
  color: white;

</style>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="main.jsp">Survey System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="main.jsp">Home</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
		
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  



<div class="row">
<a href="">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><u>Add Topic</u></h5>
        <p class="card-text">Create topic as per your choice.</p>
        <a href="#" class="btn btn-primary">Add topic</a>
      </div>
    </div>
  </div></a>
  <a href="">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><u>Delete Topic</u></h5>
        <p class="card-text">Remove uncessary topics.</p>
        <a href="#" class="btn btn-primary">Delete topic</a>
      </div>
    </div>
  </div></a>
  <a href="">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><u>View Topic</u></h5>
        <p class="card-text">View topics which are there for use.</p>
        <a href="#" class="btn btn-primary">View topic</a>
      </div>
    </div>
  </div></a>
</div>


<button  class="button" onclick="goBack()">Back</button>
<script>
function goBack() {
  window.history.back();
}
</script>
<footer>

	<p>Copyright &copy; 2020 Survey System.</p>
</footer>


</body>
</html