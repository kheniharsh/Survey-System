<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String userid=request.getParameter("usr");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+userid+"' and password='"+password+"'");
try{
while(rs.next()){
if(rs.getString("password").equals(password)&&rs.getString("email").equals(userid))
{
	session.setAttribute("userid",userid);
	String uid = rs.getString("uid");
	session.setAttribute("uid",uid);
response.sendRedirect("userhome.jsp");
}

else{
		
		response.sendRedirect("login.html");
	}
}
if(userid.equals("admin") &&password.equals("admin123"))
{
	response.sendRedirect("adminhome.html");
}
	else
	{
		response.sendRedirect("login.html");
	}
}


catch (Exception e) {
e.printStackTrace();
}
%>