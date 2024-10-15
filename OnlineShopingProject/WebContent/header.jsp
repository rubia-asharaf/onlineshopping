<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/d981e94c14.js" crossorigin="anonymous"></script>
<style>
.topnav
{
padding:5px;
background-color:#e2d9c8 ;
}
.container
{
display: flex;
align-items: center;
justify-content: space-between;
}
.link
{
display: flex;;
}
a
{
color: #082d59;
text-decoration: none;
    display: flex;
    align-items: center;
    margin-left: 30px;
    width: fit-content;
}
.search-container
{
background-color: #efefef;
 border-radius: 20px;
}
.formclass
{
display: flex;
justify-content: space-between;
padding: 5px;
}
.formclass input
{
border: 0;
background: transparent;
outline: none;
}
.formclass button
{
border: 0;
}
</style>
</head>

<body>

<div class="topnav sticky">
<%
String email=session.getAttribute("email").toString();
%>
<center><h2>Online Shopping</h2></center>
<div class="container">
<div class="link">
<a href=""><b><%out.println(email); %></b> </a>
<a href="home.jsp">Home  <i class="fa-sharp fa-solid fa-house-user"></i></a>
<a href="">My Cart  <i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
<a href="">My Orders  <i class="fa-solid fa-bag-shopping"></i></a>
<a href="">Change Details  <i class="fa-sharp fa-solid fa-pen-to-square"></i></a>
<a href="">Message Us  <i class="fa-solid fa-message"></i></a>
<a href="about.jsp">About <i class="fa-sharp fa-solid fa-book"></i></a>
<a href="logout.jsp">Logout  <i class="fa-solid fa-right-from-bracket"></i></a>
</div>
<div class="search-container" >
<form class="formclass" action="searchHome.jsp" method="post">

<input type="text" name="search" placeholder="Search here">
<button type="submit" value="Search" ><img src="img/search.png"></button>

</form>
</div>
</div>
</div>

</body>
</html>