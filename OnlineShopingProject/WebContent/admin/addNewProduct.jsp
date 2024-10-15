<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.demo.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Product</title>
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
background-image: url("111.png");
background-repeat: no-repeat;
background-size: 100%;

}

footer
{
margin-top: auto;
}
#container
{
background-image: url("adminbg1.jpeg");
background-size: 100%;
display: flex;
flex-direction:column;
align-items: center;
height: 350px;
width: 700px;
margin-left: 27%
}
.subdiv
{
display: flex;

justify-content: space-between;
align-items: center;
margin-top: 20px;
height: 250px;
width: 600px;
padding: 5px 20px;
}

.formclass
{
display: flex;
background-color: red;
justify-content: space-between;
padding: 50px 150px;
}
.txtbox
{
outline: 0;
border: 1px solid #ccc;
background: transparent;
border-radius:10px;
height: 35px;
width:160px;
color: black;
}
.txtbox:hover
{
border: 1px solid #054279;
}
.txtbox:focus
{
border: 1px solid #054279;
}
input::placeholder {
         color: #2f2f2f;
      }
      
/* button CSS */

.button-18 {
  align-items: center;
  background-color: #fababb;
  border: 0;
  border-radius: 100px;
  box-sizing: border-box;
  color: #ffffff;
  cursor: pointer;
  display: inline-flex;
  font-family: -apple-system, system-ui, system-ui, "Segoe UI", Roboto, "Helvetica Neue", "Fira Sans", Ubuntu, Oxygen, "Oxygen Sans", Cantarell, "Droid Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Lucida Grande", Helvetica, Arial, sans-serif;
  font-size: 16px;
  font-weight: 600;
  justify-content: center;
  line-height: 20px;
  width: 480px;
  min-height: 40px;
  min-width: 0px;
  overflow: hidden;
  padding: 0px;
  padding-left: 20px;
  padding-right: 20px;
  text-align: center;
  touch-action: manipulation;
  transition: background-color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, box-shadow 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: middle;
  margin-top: 10px;
}

.button-18:hover,
.button-18:focus { 
  background-color: #edcbbe;
  color: #ffffff;
}

.button-18:active {
  background: #dde1c0;
  color: rgb(255, 255, 255, .7);
}

.button-18:disabled { 
  cursor: not-allowed;
  background: rgba(0, 0, 0, .08);
  color: rgba(0, 0, 0, .3);
}
h3
{
color: fuchsia;
}

.left-div 
{
display: flex;
flex-direction: column;
align-items:center;
justify-content: space-between;
margin-right: 30px;
}
.right-div 
{
display: flex;
flex-direction: column;
align-items:center;
justify-content: space-between;
}
</style>

</head>
<body>
<header>
 
<%@ include file="adminHeader.jsp" %>
</header>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<center><h3 class="alert">Product Added successfully</h3></center>
<%}
if("wrong".equals(msg))
{%>
	<center><h3 class="alert">Something went wrong. Try again !</h3></center>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
	
}
catch(Exception e)
{
	
}
%>
<center><div><h2 style="color:yellow;">Product ID:<%out.println(id); %></h2></div></center><br>



<form  action="addNewProductAction.jsp" method="post">
<div id="container">
<input type="hidden" name="id" value="<%out.println(id);%>">
<div class="subdiv">
<div class="left-div">
<h4 style="color:#3bb2d4;">Enter Product Name</h4>
<input class="txtbox" type="text" name="name" placeholder="Enter Product Name" required="required">
<hr>
<h4 style="color:#3bb2d4;">Enter Price</h4>
<input class="txtbox" type="number" name="price" placeholder="Enter Price" required="required">
<hr>
</div>
<div class="right-div">
<h4 style="color:#3bb2d4;">Enter Category</h4>
<input class="txtbox" type="text" name="category" placeholder="Enter Category" required="required">
<hr>

<h4 style="color:#3bb2d4;">Active</h4>
<select class="txtbox" name="active">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
<hr>
</div></div>
<button class="button-18">Save</button></div>
</form>

<br><br><br>
<footer>

  <%@ include file="../footer.jsp" %>

</footer>
</body>
</html>