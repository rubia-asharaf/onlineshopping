   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
h3
{

text-align: center;

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

.animate-charcter
{
   text-transform: uppercase;
  background-image: linear-gradient(
    -225deg,
    #231557 0%,
    #44107a 29%,
    #ff1361 67%,
    #fff800 100%
  );
  background-size: auto auto;
  background-clip: border-box;
  background-size: 200% auto;
  color: #fff;
  background-clip: text;
  text-fill-color: transparent;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textclip 2s linear infinite;
  display: inline-block;
      font-size: 150px;
}

@keyframes textclip {
  to {
    background-position: 200% center;
  }
}


</style>
</head>
<body>
<header>
 
<%@ include file="adminHeader.jsp" %>
</header>

<div class="container">
  <div class="row">
    <div class="col-md-12 text-center">
      <h3 class="animate-charcter"> Welcome Admin!</h3>
    </div>
  </div>
</div>



<footer>

  <%@ include file="../footer.jsp" %>

</footer>
</body>
</html>