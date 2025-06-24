<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="stabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

<style type="text/css">
<!--
.style1 {color: #000033}
.style2 {color: #000033; font-size: 18px; }
-->
</style>
</head>

<body>
<p align="center">
  <%@ include file="db.jsp" %> 
  <span class="style2">Choose your shop for shopping </span></p>
<table width="683" border="1" align="center">
  <tr bgcolor="grey">
    <td width="162"><strong>Store name </strong></td>
    <td width="157"><strong>Address</strong></td>
    
    <td width="167"><strong>phone number </strong></td>
   
    <td width="169">&nbsp;</td>
    
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from ngo");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="white">
    <td><span class="style3 style1"><%= rst.getString(1) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(5) %>"/></span></td>
    <td><input type="submit" name="Submit" value="Go for shopping" /></td>
    
  </tr>
  </form>
  <% } %>
</table>



  <p>
    <% 
if(request.getParameter("Submit")!=null){
session.setAttribute("storeno",request.getParameter("e4"));

response.sendRedirect("Customer_GO_Shopping.jsp");
}
%>
    </p>
      </p>
  <p align="center"><a href="Customer_showOrders.jsp" target="_self" >Show my Orders</a>    </p>
</body>
</html>
