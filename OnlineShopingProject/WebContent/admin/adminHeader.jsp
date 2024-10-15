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
display: flex;

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
<a href="addNewProduct.jsp">Add new Product<i class="fa-solid fa-circle-plus"></i> </a>
<a href="allProductEditProduct.jsp">All products & Edit Product<i class="fa-sharp fa-solid fa-pen-to-square"></i></a>
<a href="">Message Received <i class="fa-solid fa-message"></i></a>
<a href="">Orders Received <i class="fa-duotone fa-solid fa-arrow-down-short-wide"></i></a>
<a href="">Cancel Orders <i class="fa-sharp fa-thin fa-circle-xmark"></i></a>
<a href="">Delivered Orders <i class="fa-sharp fa-solid fa-truck"></i> </a>
<a href="../logout.jsp">Logout <i class="fa-solid fa-right-from-bracket"></i></a>
</div>
</body>
</html>