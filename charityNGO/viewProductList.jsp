<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="ngotabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style></head>

<body>
  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select productid,productname,productprice,quantity from product where storephone='"+session.getAttribute("ngophone")+"' ");

  
						
  %>
  Product List</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style1">product ID </div></td>
    <td><div align="center" class="style1">Product Name </div></td>
    <td><div align="center" class="style1">Product cost </div></td>
    <td>&nbsp;</td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><%= rst.getString(1) %></div></td>
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
    <td><form id="form1" name="form1" method="post" action="">
	<input name="id" type="hidden" value="<%= rst.getString(1) %>" />
      <input type="submit" name="delete" value="Delete" />
    </form>
    </td>
  </tr>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
 
 
 <%
if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from product where productid='"+request.getParameter("id")+"'");
if(x!=0){
//response.sendRedirect("product deleted.jsp");
%>
<script>
alert("Date Deleted successfully");
window.open("viewProductList.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
</body>
</html>
