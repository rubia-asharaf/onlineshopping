<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
   <%@ include file="footer.jsp" %>
    <%@page import="com.demo.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>

<%
String emailid=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;
int cart_quantity=0;
int z=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from product where id='"+product_id+"'");
	while(rs.next())
	{
		product_price=rs.getInt(4);
		product_total=product_price;
	}
	ResultSet rs1=stmt.executeQuery("select * from cart where product_id='"+product_id+"' and email='"+emailid+"' and address is NULL");
	while(rs1.next())
	{
		cart_total=rs1.getInt(5);
		cart_quantity=rs1.getInt(3);
		cart_total=cart_total+product_total;
		quantity=cart_quantity+1;
		z=1;
	}
	if(z==1)
	{
		stmt.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where product_id='"+product_id+"' and email='"+emailid+"' and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if(z==0)
	{
		PreparedStatement stmt1=con.prepareStatement("insert into cart(email,product_id,quantity,price,total)values(?,?,?,?,?)");
		stmt1.setString(1, emailid);
		stmt1.setString(2, product_id);
		stmt1.setInt(3, quantity);
		stmt1.setInt(4,product_price);
		stmt1.setInt(5,product_total);
		stmt1.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
	}
}
catch(Exception e)
{
	response.sendRedirect("home.jsp?msg=invalid");
}
%>







<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>