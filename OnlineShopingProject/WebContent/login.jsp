<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping</title>
<style>

#container
{
background-image: url("img/999.jpg");
background-size: 100%;
display: flex;
height: 450px;
width: 700px;
padding: 50px;
margin: 50px 400px;
}
.signup
{
display: flex;
flex-direction: column;
padding: 30px;
width: 40%
}
.formclass
{
display: flex;
flex-direction: column;
justify-content: space-between;
}
.txtbox
{
border: 0;
outline: 0;
border-bottom: 1px solid #ccc;
background: transparent;
height: 50px;
color: black;
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
  max-width: 480px;
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

body {
    background-image: url("img/111.png");
    background-repeat: no-repeat;
    background-size: 100%;
}
a
{
text-decoration: none;
}

</style>
</head>
<body >


<div id="container">
	<div class="signup">
	<form class="formclass" action="loginAction.jsp" method="post">
	<input class="txtbox" type="email" name="email" placeholder="Enter Email" required="required"><br>
	<input class="txtbox" type="password" name="password" placeholder="Enter Password" required="required"><br>
	<br>
	<input class="button-18" type="submit" value="Login">
	</form>
	<br>
	<h3><a href="signUp.jsp">SignUp</a></h3>
	<h3><a href="forgotPassword.jsp">Forgot Password ?</a></h3>
	</div>
	<div class="whysignLogin">
	<%
	String msg=request.getParameter("msg");
	if("notexist".equals(msg))
	{%>
		<h1 style="color: red">Incorrect Username or Password.</h1>
	<%}
	if("invalid".equals(msg))
	{%>
		<h1 style="color: red">Something went wrong. Try Again..!</h1>
	<%}
	%>
	<h2>Online shopping</h2>
	<p>The online shopping System is the application that allows the users to shop online without going to the shops to buy them. </p>
	</div>
</div>

</body>
</html>