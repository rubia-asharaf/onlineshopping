<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   <%@page import="com.demo.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/d981e94c14.js" crossorigin="anonymous"></script>
<style>
h3
{
color:yellow;
text-align:center;
}
html
{
height: 100%;

}
body
{
min-height: 100%;
display: flex;
flex-direction: column;
background-image: url("111.png");
    background-repeat: no-repeat;
    background-size: 100%;
    
}

footer
{
margin-top: auto;
}
table {
    margin: 20px;
	
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: green;
}

th {
	text-align: left;
}
tr {
	text-align: left;
}

thead {
	th {
		background-color: #818d99;
	}
}

</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<h3 class="alert">Product successfully Updated</h3>
<%}
if("wrong".equals(msg))
{%>
	<h3 class="alert">Something went wrong. Try again !</h3>
<%} %>
<header>
 
<%@ include file="adminHeader.jsp" %>
</header>
<table>
<thead>

<tr>
<th>ID</th>
<th>Nmae</th>
<th>Category</th>
<th>Price</th>
<th>Status</th>
<th>Edit</th>
</tr>
</thead>
<tbody>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("Select * from product");
	while(rs.next())
	{
		%>
		
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><a href="editProduct.jsp?id=<%= rs.getString(1)%>">Edit<i class="fa-sharp fa-solid fa-pen-to-square"></i></a></td>
		</tr>
		<%
		
	}
}
catch(Exception e)
{
	
}
%>


</tbody>
</table>

<br>
<footer>

  <%@ include file="../footer.jsp" %>

</footer>
</body>
</html>