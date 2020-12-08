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
String tid = request.getParameter("tid");
String ques = request.getParameter("ques");
String o1 = request.getParameter("o1");
String o2 = request.getParameter("o2");
String o3 = request.getParameter("o3");
String o4 = request.getParameter("o4");

String sql1 ="insert into question(tid,question,option1,option2,option3,option4) values(?,?,?,?,?,?)";
stmt=con.prepareStatement(sql1);
stmt.setString(1,tid);
stmt.setString(2,ques);
stmt.setString(3,o1);
stmt.setString(4,o2);
stmt.setString(5,o3);
stmt.setString(6,o4);

stmt.executeUpdate();
con.close();
response.sendRedirect("question.html");
}catch(Exception e)
{}


%>
                      