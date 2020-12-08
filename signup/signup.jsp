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
String name = request.getParameter("name");
String email = request.getParameter("email");
String pwd = request.getParameter("password");
String number = request.getParameter("number");
String city = request.getParameter("city");
String state = request.getParameter("state");

String sql1 ="insert into user(name, email, password, contactnumber, city, state) values(?,?,?,?,?,?)";
stmt=con.prepareStatement(sql1);
stmt.setString(1,name);
stmt.setString(2,email);
stmt.setString(3,pwd);
stmt.setString(4,number);
stmt.setString(5,city);
stmt.setString(6,state);

stmt.executeUpdate();
con.close();
response.sendRedirect("home.jsp");
}catch(Exception e)
{}


%>
                      