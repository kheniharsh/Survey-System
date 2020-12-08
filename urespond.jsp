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
String uid = request.getParameter("uid");
String email = request.getParameter("email");
String tid = request.getParameter("tid");
String o1 = request.getParameter("1");
String o2 = request.getParameter("2");
String o3 = request.getParameter("3");
String o4 = request.getParameter("4");
String o5 = request.getParameter("5");


String sql1 ="insert into respond(uid,email,tid,r1,r2,r3,r4,r5) values(?,?,?,?,?,?,?,?)";
stmt=con.prepareStatement(sql1);
stmt.setString(1,uid);
stmt.setString(2,email);
stmt.setString(3,tid);
stmt.setString(4,o1);
stmt.setString(5,o2);
stmt.setString(6,o3);
stmt.setString(7,o4);
stmt.setString(8,o5);


stmt.executeUpdate();
con.close();

}catch(Exception e)
{}

response.sendRedirect("userhome.jsp");
%>
                      