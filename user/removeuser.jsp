<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>  
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "system";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
Statement statement1 = null;
ResultSet resultSet = null;
Connection con = null;
Connection con2 = null;
PreparedStatement stmt = null;
PreparedStatement stmt1 = null;
%>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con= DriverManager.getConnection(connectionUrl+database, userid, password);
String email = request.getParameter("email");

String sql1 ="DELETE from user WHERE email = ?;";
stmt=con.prepareStatement(sql1);
stmt.setString(1,email);

stmt.executeUpdate();
con.close();
response.sendRedirect("user.html");
}catch(Exception e)
{}
%>