<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.demo.ConnectionProvider" %>
 <%@page import="java.sql.*" %>
 <%
 String email=request.getParameter("email");
 String password=request.getParameter("password");
 if("admin@inmakes.com".equals(email)&&"admin".equals(password))
 {
	 session.setAttribute("email", email);
	 response.sendRedirect("admin/adminHome.jsp");
 }
 else
 {
	 int z=0;
	 try
	 {
		 Connection con=ConnectionProvider.getCon();
		 Statement stmt=con.createStatement();
		 ResultSet res=stmt.executeQuery("select * from users where email='"+email+"'&&password='"+password+"'");
		 while(res.next())
		 {
			 z=1;
			 session.setAttribute("email", email);
			 response.sendRedirect("home.jsp");
		 }
		 if(z==0)
		 {
			 response.sendRedirect("login.jsp?msg=notexist");
		 }
	 }
	 catch(Exception e)
	 {
		 //System.out.print(e);
		 response.sendRedirect("login.jsp?msg=invalid");
	 }
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