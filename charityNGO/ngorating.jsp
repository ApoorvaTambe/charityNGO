<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
    <%@ include file="stabs.html"  %>
	<%@ include file="db.jsp"  %>
	 <%

rst=stmt.executeQuery("select ngoname, avg(rating) from ngorating where rating > 0 group by ngoname");
%>
	 <style type="text/css">
<!--
body {
	background-color: #AEAEAE;
}
.style7 {color: #FF0000; font-size: 18px; font-weight: bold; }
.style8 {
	font-size: 24px;
	font-weight: bold;
}
-->
     </style>
	 
<p align="center" class="style8">NGO Rating </p>
<table width="348" border="1" align="center">
  <tr>
    <td><strong>NGO Name </strong></td>
    <td><strong>Rating</strong></td>
  </tr>
 



<%

while(rst.next()){
%>
 <tr>
    <td><span class="style7"><%= rst.getString(1) %></span></td>
	<%  
	float m=Float.parseFloat(rst.getString(2));
	
	%>
	
    <td><span class="style7">
      <% for(int i=1; i<=m; i++){
	%>
	  <img src="images/star.PNG" width="24" height="22" />
	  <% } %>    
    </span></td>
  </tr>
  
  <%



}

   %>
</table>
<div align="center"></div>
	 