<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
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
  margin-left:20%;
  margin-right:20%;
}
</style>
<body>
<div class="logindiv" >
<h3 align="center" style="color:#0000CC">Beneficiary Login Page</h3>
  <form action="" method="post">
    <label for="fname">Beneficiary Email</label>
    <input type="email"  name="username" placeholder="Email">

    <label for="lname">Password</label>
    <input type="password"  name="password" placeholder="Your Password.">

  
  
    <input type="submit" name="Submit" value="Submit">
	<a href="Benifiregister.jsp"><input type="button" value="Registeration for new Beneficiary"></a>
  </form>
</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from Beneficiary where email='"+s1+"' and password='"+s2+"'");
if(rst.next()){

session.setAttribute("bphone",rst.getString(5));
session.setAttribute("bemail",s1);

%>
<script>

alert("login Successfull");
window.open("Bprofile.jsp","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}





}


%>
</body>

</html>
