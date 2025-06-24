<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="hometabs.html" %> 
  <%@ include file="db.jsp" %> 
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: #0000FF}
-->
</style>
</head>

<body>


<p align="center" style="color:#0000FF">Search NGO  </p>
<form id="form1" name="form1" method="post" action="">
  <table width="306" border="1" align="center">
    <tr>
      <td>Search NGO
        <input type="text" name="s12" />
        <input type="submit" name="search2" value="Search" /></td>
    </tr>
  </table>
</form>
<p align="center" style="color:#0000FF"><strong>NGO    Details </strong></p>
<form id="form1" name="form1" method="post" action="">

  <p align="center">&nbsp;</p>
  <table width="293" border="1" align="center">
    <tr>
      <td>Search by NGO name
        <select name="select">
          <% 
 rst=stmt.executeQuery("select name from ngo  ");
  while(rst.next()){
  
   %>
          <option><%= rst.getString(1) %></option>
          <% 
	  }
	   %>
        </select>
        <input type="submit" name="search3" value="Search" /></td>
    </tr>
  </table>
</form>
  <form id="form1" name="form1" method="post" action="">
    <table width="301" border="1" align="center">
    <tr>
      <td>Search by NGO ID
        <select name="select2">
          <% 
 rst=stmt.executeQuery("select ngoid from ngo  ");
  while(rst.next()){
  
   %>
          <option><%= rst.getString(1) %></option>
          <% 
	  }
	   %>
        </select>
        <input type="submit" name="search4" value="Search" /></td>
    </tr>
  </table>
  </form>
<form id="form1" name="form1" method="post" action="">
  <table width="290" border="1" align="center">
    <tr>
      <td>Search by City
        <select name="s1">
          <% 
 rst=stmt.executeQuery("select distinct address from ngo  ");
  while(rst.next()){
  
   %>
          <option><%= rst.getString(1) %></option>
          <% 
	  }
	   %>
        </select>
        <input type="submit" name="search" value="Search" /></td>
    </tr>
  </table>
  </form>
<p align="center">&nbsp;

  


<% 

if(request.getParameter("search")!=null){

String s1=request.getParameter("s1");
out.print(s1);
 rst=stmt.executeQuery("select * from ngo where name='"+s1+"' or address='"+s1+"' or ngoid='"+s1+"'  ");
  while(rst.next()){
  
   %>
<table width="713" border="0" align="center" style=" border-radius: 14px;">
  <tr bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="367"><p align="center"><strong>NGO Name </strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Address :</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>Phone:</strong><%= rst.getString(5) %></p>
	 
      <p align="center"><strong>id:</strong>:<%= rst.getString(3) %></p>
      <p align="center"><strong>Description:</strong></p>
    <p align="center" class="style1">
      <textarea name="textarea"><%= rst.getString(11) %></textarea>
    </p></td>
   
    <td align="center" width="336"><img src="images/<%= rst.getString(10) %>" width="336" height="225" /></td>
  </tr>
</table>
  <br />

  
  <% }
  
  }
   %>



<% 

if(request.getParameter("search")==null){

String s1=request.getParameter("s1");
out.print(s1);
 rst=stmt.executeQuery("select * from ngo ");
  while(rst.next()){
  
   %>
<table width="708" border="0" align="center" style=" border-radius: 14px;">
  <tr bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="362"><p align="center"><strong>NGO Name </strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Address :</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>Phone:</strong><%= rst.getString(5) %></p>
	 
    <p align="center"><strong>id:</strong>:<%= rst.getString(3) %></p>
    <p align="center"><strong>Description:</strong></p>
    <p align="center" class="style1"> <textarea name="textarea"><%= rst.getString(11) %></textarea></p></td>
   
    <td align="center" width="336"><img src="images/<%= rst.getString(10) %>" width="336" height="225" /></td>
  </tr>
</table>
  <br />

  
  <% }
  
  }
   %>






</p>


</body>
</html>
