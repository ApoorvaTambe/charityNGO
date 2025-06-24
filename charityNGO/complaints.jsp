<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="admintabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {color: black}

-->
</style>
</head>

<body>
<p align="center" style="color:red; font-size:24px">

View All Complaints</p>
<table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Sponser name</strong></td>
    <td width="142"><strong>Comaplaints</strong></td>
 
    
  
    
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from complaints");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="white">
    <td><%= rst.getString(1) %></td>
	 <td><%= rst.getString(2) %></td>
	
		
   
	 
  </tr>
  </form>
  <% } %>
</table>




</body>
</html>
