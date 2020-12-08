<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
  <head>
    <title>Survey Form</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 16px;
      color: #666;
      line-height: 28px;
      }
      h1, h4 {
      font-weight: 400;
      }
      h4 {
      margin: 25px 0 5px;
      color: #095484;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 3px;
      }
      form {
      width: 100%;
      padding: 20px;
      background: #fff;
      box-shadow: 0 2px 5px #ccc; 
      }
      input {
      width: auto;
      margin-right: 15px;
      vertical-align: middle;
      }
      .question-answer label {
      display: block;
      }
      .btn-block {
      margin-top: 20px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      -webkit-border-radius: 5px; 
      -moz-border-radius: 5px; 
      border-radius: 5px; 
      background-color: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background-color: #0666a3;
      }
	  .text {
      width: auto;
      padding: 5px;
      border-radius: 3px;
      
      vertical-align: middle;
      }
    </style>
  </head>
  <body>

    <div class="testbox">
      <form action="urespond.jsp" >
	  <div class = "text">
        <h1>Survey</h1>
		<h4>User ID:</h4>
        <input type="text" name="uid" value="<%String a=session.getAttribute("uid").toString();%><%out.println(a);%>">
        <h4>Email:</h4>
        <input type="text" name="email" value="<%String b=session.getAttribute("userid").toString();%><%out.println(b);%>">
        <h4>Topic ID:</h4>
        <input type="text" name="tid" value="<%String c=session.getAttribute("tid").toString();%><%out.println(c);%>"></div>
  <%
try {
	int i=1;
String connectionURL = "jdbc:mysql://localhost:3306/system";

Connection connection = null;

Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
statement = connection.createStatement();
String QueryString = "SELECT * from question where tid = '115'";
rs = statement.executeQuery(QueryString);
%>
<%
while (rs.next()) {
	
%>		
        <div>
          <h4><%=rs.getString(3)%></h4>
          <div class="question-answer">
            <label><input type="radio" value="<%=rs.getString(4)%>" name="<%out.println(i);%>" /><%=rs.getString(4)%></label>
            <label><input type="radio" value="<%=rs.getString(5)%>" name="<%out.println(i);%>" /><%=rs.getString(5)%></label>
            <label><input type="radio" value="<%=rs.getString(6)%>" name="<%out.println(i);%>" /><%=rs.getString(6)%></label>
            <label><input type="radio" value="<%=rs.getString(7)%>" name="<%out.println(i);%>" /><%=rs.getString(7)%></label><%i++;%>
          </div>
        </div>
<% } %> 
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {}
%>
        <div class="btn-block">
          <input type="submit" value="Submit" >
        </div>
      </form>
    </div>
  </body>
</html>