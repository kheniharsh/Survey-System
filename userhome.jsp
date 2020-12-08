<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
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
      <li><a href="userhome.jsp">Home</a></li>
      
	 
    </ul>
    <ul class="nav navbar-nav navbar-right">
	<li><%String a=session.getAttribute("uid").toString();%><a><%out.println("ID:"+a);%></a></li>
	  <li><%String b=session.getAttribute("userid").toString();%><a><%out.println("Email:"+b);%></a></li>
      <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<%
try {
 
String connectionURL = "jdbc:mysql://localhost:3306/system";

Connection connection = null;

Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
statement = connection.createStatement();
String QueryString = "SELECT * from topic";
rs = statement.executeQuery(QueryString);
%>
<div class="row">
<%
while (rs.next()) {
%>
<%session.setAttribute("tid",rs.getInt(1)); %>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title"><b>Topic:<%=rs.getString(2)%></b></h4><br>
		<h6 class="card-text"><b>Tid:<%=rs.getInt(1)%></b></h6><br>
        <a href="surveyform.jsp" class="btn btn-primary">Survey</a>
      </div>
    </div>
  </div>
<% } %>  
 </div>


<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {}
%>


<footer>
	<p>Copyright &copy; 2020 Survey System.</p>
</footer>


</body>
</html>