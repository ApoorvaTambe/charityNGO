<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="Btabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select, number {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:30%;
  margin-right:30%;
  color:#000066;
}
.style2 {color: #000033}
</style>
<body>




<h3 align="center" style="color:blue">Donation Details </h3>
  

<table width="1076" border="0" align="center">
  <tr bgcolor="white">
    <td width="193"><strong>Benifishieay Name</strong></td>
   
    <td width="141"><strong>adhar</strong></td>
    <td width="148"><strong>accountno</strong></td>
	<td width="193"><strong>Phone</strong></td>
   
    <td width="141"><strong>Reason</strong></td>
    <td width="148"><strong>Request ID</strong></td>
	<td width="193"><strong>Doner Name</strong></td>
   
    <td width="141"><strong>Amount</strong></td>
    <td width="148"><strong>Donation ID</strong></td>
  </tr>
  
  
  <% 
  
  rst=stmt.executeQuery("select bname,adhar,accountno,phone,reason,requestid,Donername,Amount,id from benifshieaydonation  ");
  while(rst.next()){
  
   %>
  

  <tr bgcolor="#FFFFFF">
    <td><span class="style2"><%= rst.getString(1) %> </span></td>
    <td><span class="style2"><%= rst.getString(2) %>   </span></td>
    <td><span class="style2"><%= rst.getString(3) %></span></td>
	 <td><span class="style2"><%= rst.getString(4) %> </span></td>
    <td><span class="style2"><%= rst.getString(5) %>   </span></td>
    <td><span class="style2"><%= rst.getString(6) %></span></td>
	 <td><span class="style2"><%= rst.getString(7) %> </span></td>
    <td><span class="style2"><%= rst.getString(8) %>   </span></td>
    <td><span class="style2"><%= rst.getString(9) %></span></td>
  </tr>

  <% } %>
</table>



 
 
</body>

</html>
