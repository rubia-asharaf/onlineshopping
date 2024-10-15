<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
    <%@page import="com.demo.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<script src="https://kit.fontawesome.com/d981e94c14.js" crossorigin="anonymous"></script>

<style>
html
{
height: 100%;

}
body
{
min-height: 100%;
display: flex;
flex-direction: column;
background-image: url("img/111.png");
    background-repeat: no-repeat;
    background-size: 100%;
    
}

footer
{
margin-top: auto;
}
h3
{
color:yellow;
text-align: center;
}
.homeconainer
{
padding: 20px;
margin: 20px;
display: flex;
flex-direction: column;
align-content: center;
}



table {
    margin: 20px;
	width: 1000px;
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
<header>
 <%@ include file="header.jsp" %>

</header>

<div class="homeconainer">
<div style="color:#424528; text-align: center; font-size:30px; font-weight: 200px;">Home <i class="fa-sharp fa-solid fa-house-user"></i></div>
<center><table>
	<thead>
	<tr>
		<th >ID</th>
		<th >Name</th>
		<th >Category</th>
		<th >Price</th>
		<th >Add to cart</th>
		</tr></thead>
		<tbody>
		
		<%
		int z=0;
		try
		{
			String search=request.getParameter("search");
			Connection con=ConnectionProvider.getCon();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from product where name like'%"+search+"%' or category like'%"+search+"%'and active='yes'");
			while(rs.next())
			{
				z=1;
		%>
		<tr>
		 
		 <td><%= rs.getString(1)%></td>
		 <td><%= rs.getString(2)%></td>
		 <td><%= rs.getString(3)%></td>
		 <td><%= rs.getString(4)%></td>
		 <td><a href="addToCartAction.jsp?id=<%= rs.getString(1)%>">Add to cart <i class="fa-sharp fa-solid fa-cart-shopping"></i></a></td>
		 
		 </tr>
		<%
			}
		}
		catch(Exception e)
		{
			
		}
		%>
		</tbody>
		</table></center>
		</div>
		<%
		if(z==0)
		{
		%>
		<div clas="nothing"><h3>Nothing To Show</h3></div>
		<%
		
		
		}
		%>
		<footer>

<%@ include file="footer.jsp" %>

</footer>
</body>
</html>