<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #C9D7E5;
}
.style3 {color: #0000FF; font-weight: bold; }
.style4 {
	font-size: 36px;
	font-weight: bold;
	color: #0000FF;
}
.style5 {color: #000099}
-->
</style></head>

<body>
<%@ include file="ngotabs.html" %>
<div align="center" class="style4">Show Orders </div>
<%@ include file="db.jsp" %>
<% 
rst=stmt.executeQuery("select * from orderlist where storephone='"+session.getAttribute("ngophone")+"'");

 %>
<table width="1176" border="1" align="center">
  <tr bgcolor="#FFFFFF">
    <td width="91"><span class="style3">Productname</span></td>
    <td width="102"><span class="style3">product cost </span></td>
    <td width="73"><span class="style3">Quantity</span></td>
    <td width="94"><span class="style3">Total amount </span></td>
    <td width="111"><span class="style3">Address</span></td>
    <td width="162"><span class="style3">Customer phone </span></td>
    
    <td width="69"><span class="style3">OrderID</span></td>
	 <td width="69"><span class="style3">Status</span></td>
	 <td width="69"><span class="style3">Update status</span></td>
  </tr>
  <% while(rst.next()){ %>
  <tr bgcolor="#CCFF99">
    <td><span class="style5"><%= rst.getString(1) %></span></td>
    <td><span class="style5"><%= rst.getString(2) %></span></td>
    <td><span class="style5"><%= rst.getString(3) %></span></td>
    <td><span class="style5"><%= rst.getString(4) %></span></td>
    <td><span class="style5"><%= rst.getString(5) %></span></td>
    <td><span class="style5"><%= rst.getString(13) %></span></td>
   
    <td><span class="style5"><%= rst.getString(11) %></span></td>
	 <td><span class="style5"><%= rst.getString(13) %></span></td>
	  <td><form action="" method="post"><input name="oid" type="hidden" value="<%= rst.getString(11) %>" /><input name="Delivered" type="submit" value="Delivered" /></form></td>
  </tr>
  <% } %>
</table>

<% 
if(request.getParameter("Delivered")!=null){

int x=stmt.executeUpdate("update orderlist set status='Delivered' where orderid='"+request.getParameter("oid")+"'");
if(x!=0){
%>
<script>
alert("Product delivered ");
window.open("showOrders.jsp","_self");
</script>

<%

}

}

 %>
</body>
</html>
