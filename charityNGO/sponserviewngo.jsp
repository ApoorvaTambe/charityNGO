<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="stabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {color: black}

-->
</style>
</head>

<body>
<p align="center" style="color:#0000FF">Search NGO  </p>
<form id="form1" name="form1" method="post" action="">
  <p align="center">Search NGO 
    <input type="text" name="s1" />      
    <input type="submit" name="search" value="Search" />
  </p>
</form>
<p align="center" style="color:#0000FF"><strong>NGO    Details </strong></p>
<form id="form1" name="form1" method="post" action="">

  <p align="center">Search by NGO name
    <select name="s1">
	<% 
 rst=stmt.executeQuery("select name from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
	  <% 
	  }
	   %>
    </select>
    <input type="submit" name="search" value="Search" />
  </p>
</form>
  <form id="form1" name="form1" method="post" action="">
  <p align="center">Search by NGO ID
    <select name="s1">
      <% 
 rst=stmt.executeQuery("select ngoid from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
      <% 
	  }
	   %>
    </select>
    <input type="submit" name="search" value="Search" />
</p>
  </form>
<form id="form1" name="form1" method="post" action="">
  <p align="center">Search by City
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
    <input type="submit" name="search" value="Search" />
  </p>
</form>
<p align="center">&nbsp;</p>

  


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
    <p align="center" class="style1"> <textarea name="textarea"><%= rst.getString(11) %></textarea></p>
    <p align="center" class="style1">
	<form id="form1" name="form1" method="post" action="">
	  <input name="nname" type="hidden" value="<%= rst.getString(1)  %>">
        <p>Rating out of 5
          <select name="rate">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            </select><input type="submit" name="rating" value="ok" />
</p>
        </form> 
	</p></td>
   
    <td align="center" width="336"><img src="images/<%= rst.getString(10) %>" width="336" height="225" />
	
	</td>
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
    <p align="center" class="style1"> <textarea name="textarea"><%= rst.getString(11) %></textarea></p>
	<p align="center" class="style1">
	<form id="form1" name="form1" method="post" action="">
	  <input name="nname" type="hidden" value="<%= rst.getString(1)  %>">
        <p>Rating out of 5
          <select name="rate">
            <option>0</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            </select><input type="submit" name="rating" value="ok" />
</p>
        </form> 
	</p>
	
	</td>
   
    <td align="center" width="336"><img src="images/<%= rst.getString(10) %>" width="336" height="225" /></td>
  </tr>
</table>
  <br />

  
  <% }
  
  }
   %>






<% 
if(request.getParameter("rating")!=null){

try{
String pname=request.getParameter("nname");
int rate=Integer.parseInt(request.getParameter("rate"));
int x=stmt.executeUpdate("insert into ngorating values( '"+pname+"',"+rate+" ) ");
if(x!=0){
%>
<script>alert("rating is done successfully");</script>

<%

}
}catch(Exception e){
%>
<script>alert("error is :"+<%= e %>);</script>

<%
}
}

 %>


</body>
</html>
