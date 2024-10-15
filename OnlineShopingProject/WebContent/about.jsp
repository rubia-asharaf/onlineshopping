<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About US</title>

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
.main
{
background-image: url("img/999.jpg");
background-size: 100%;
hieght:500px;
width:600px;
align-content: center;
background-color: red;
margin-top: 50px;
}
.image
{
display: flex;
justify-content: space-between;
}
.image img
{
height: 180px;
width: 200px;
}
h3
{
color: maroon;
}
</style>

</head>

<body>
<header>
 <%@ include file="header.jsp" %>

</header>

<center>
<div class="main">
<div style="padding:5px;">
Online shopping is a form of electronic commerce or e-commerce.<br>
 It allows consumers to directly purchase goods or services from a seller over the internet.<br>
  Online shopping involves browsing an online store, selecting products, and adding them to a virtual shopping cart.<br>
<h3>If you would like to experience the best of online shopping in India, you are at the right place.</h3>
</div>
<div class="image">
<img src="img/online-shopping1.png">
<img src="img/logo.jpg">
<img src="img/33333.jpeg">
</div>
</div>
</center>
<footer>

<%@ include file="footer.jsp" %>

</footer>
</body>
</html>