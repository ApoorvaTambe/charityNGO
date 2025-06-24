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

}
.style5 {
	font-size: 24px;
	font-weight: bold;
	color: #000066;
}
.style6 {color: black}
.style11 {font-size: 14px; font-weight: bold; color: black; }
.style12 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style></head>

<body>

<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from feedback ");
%> 
</p>
<p align="center"><span class="style5">FeedBacks</span></p>
<table width="276" border="1" align="center" bgcolor="#CCCCCC">
  <tr bgcolor="#FFFFFF">
    <td width="84"><div align="center" class="style11">NGO Name</div></td>
  
    <td width="176"><span class="style11">Feed Back </span></td>
  </tr>
 <%
						while(rst.next()){
						%>
					<form action="" method="post" >	
					
							 <tr>
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(2)); %>
    </span></td>
  </tr>
  </form>
  <%
  }
  %>
</table>


  <% 




rst=stmt.executeQuery("select * from suggestion ");
%> 
</p>
<p align="center"><span class="style5">suggestion</span></p>
<table width="420" border="1" align="center" bgcolor="#CCCCCC">
  <tr bgcolor="#FFFFFF">
    <td width="84"><div align="center" class="style11">NGO Name</div></td>
  
    <td width="163"><span class="style12">Sponser name </span></td>
    <td width="151"><span class="style11">suggestion </span></td>
  </tr>
 <%
						while(rst.next()){
						%>
					<form action="" method="post" >	
					
							 <tr>
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(2)); %>
    </span></td>
    <td><span class="style6">
      <% out.print(rst.getString(3)); %>
    </span></td>
  </tr>
  </form>
  <%
  }
  %>
</table>






 <%						

if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from feedback where feedback='"+request.getParameter("f1")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewfeedback.jsp","_self");
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
