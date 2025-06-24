<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ include file="db.jsp" %>
<%

try
{
MultipartRequest m = new MultipartRequest(request, "C:\\Program Files (x86)\\Apache Software Foundation\\Tomcat 5.5\\webapps\\charityNGO\\images");
String path="images/";
String category=m.getParameter("category");
String productname=m.getParameter("productname");
String productprice=m.getParameter("productprice");
String quantity=m.getParameter("quantity");
String image=path+m.getOriginalFileName("image");
String desc=m.getParameter("desc");
String discount=m.getParameter("discount");

String storephone=(String)session.getAttribute("ngophone");

int x=stmt.executeUpdate("insert into product(category,productname,productprice,quantity,image,description,storephone,discount) values('"+category +"','"+productname +"','"+productprice +"','"+quantity +"','"+image+"','"+desc+"','"+storephone+"','"+discount+"')");

if(x!=0){
%>
<script>
alert("Item inseted seccuessfully");
window.open("addProduct.jsp","_self");
</script>
<%
}
			
}catch(Exception e){
out.println(e);
}


 %>
 

