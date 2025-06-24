<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="Btabs.html" %> 
  <%@ include file="db.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<div align="center" class="style1">Get Token</div>
<form id="form1" name="form1" method="post" action="">
  <table width="345" border="1" align="center">
    <tr>
      <td width="155">Select Date </td>
      <td width="174"><input type="date" name="r1" /></td>
    </tr>
    <tr>
      <td>Beneficiary Email </td>
      <td><input type="text" name="r2" value="<%= session.getAttribute("bemail") %>" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" /></td>
    </tr>
  </table>
</form>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");

try{


int x=stmt.executeUpdate("insert into token values('"+s1+"','"+s2+"')");
if(x!=0){
%>
<script>

alert("New token generated Successfully");
</script>
<%
}
}catch(Exception e){
%>
<script>

alert("token for this date is already taken");
</script>
<%
}
}
 %>
</body>
</html>
