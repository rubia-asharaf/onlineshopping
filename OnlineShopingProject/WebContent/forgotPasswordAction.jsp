<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.demo.ConnectionProvider" %>
 <%@page import="java.sql.*" %>
<% 
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");
int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from users where email='"+email+"' and mobileNumber='"+mobileNumber+"'and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	while(rs.next())
	{
		check=1;
		stmt.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}
catch(Exception e)
{
	
}
    %>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>