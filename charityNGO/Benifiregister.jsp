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
}
</style>
<body>

<h3 align="center" style="color:white">Registration for beneficiary</h3>

<div class="logindiv">
  <form action="" method="post">
    <label for="fname">  Name </label>
    <input type="text"  name="r1" placeholder="Name" required>
	 <label for="fname">Email</label>
    <input type="email"  name="r2" placeholder="Email" required><br /><br />
	 <label for="fname"> Password </label>
    <input type="text"  name="r3" placeholder="password" required>
	
	 <label for="fname"> Address </label><br />

     <textarea name="r4" ></textarea> <br /><br />
	 <label for="fname"> Phone number </label>
    <input type="text"  name="r5" placeholder="phone" required>
	 <label for="fname"> Select NGO </label>
	 <select name="r6">
	<% 
 rst=stmt.executeQuery("select name from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
	  <% 
	  }
	   %>
    </select>
  	 
  
    <input type="submit" name="Submit" value="Click Here to Register">
	
  </form>
</div>



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
String s6=request.getParameter("r6");


int x=stmt.executeUpdate("insert into beneficiary(name,email,password,address,phone,ngo) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
if(x!=0){
%>
<script>

alert("New beneficiary rregistered Successfully");
</script>
<%
}
}
 %>
</body>

</html>
