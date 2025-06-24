<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="Btabs.html" %>
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

<h3 align="center" style="color:white">Request For Danation</h3>
<% 
String buser=(String)session.getAttribute("bemail");

 %>
<div class="logindiv">
  <form action="" method="post">
    <label for="fname">  Name </label>
    <input type="text"  name="r1" placeholder="Name" required>
	
    <br />
	 <label for="fname"> Adhar Number </label>
	 <input type="text"  name="r2" placeholder="Adhar Number" required>
	
	 <label for="fname"> Account Number </label>
	 <br />
	 <input type="text"  name="r3" placeholder="Account Number" required="required" />
	 <br />
	 <br />
	 <label for="fname"> email </label>
    <input type="email"  name="r4" placeholder="email" value="<%= buser %>" required>
	 <label for="fname">Reason for the Request<br /> 
	 <textarea name="r5"></textarea>
	 </label>
	 <input type="submit" name="Submit" value="Send Request">
	
  </form>
</div>



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");



int x=stmt.executeUpdate("insert into benifshieayrequest(bname,adhar,accountno,email,reason) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>

alert("Request Sent Successfully");
</script>
<%
}
}
 %>
</body>

</html>
