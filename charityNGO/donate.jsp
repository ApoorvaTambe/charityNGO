<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="usertabs.html" %>
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
  color:#000033;
}
</style>
<body>


<div class="logindiv">

<h3 align="center" style="color:blue">Donate money to CM Releaf Fund</h3>
  <form action="" method="post">
    <label for="fname"> Doner Name</label>
    <input type="text"  name="r1" placeholder="firstname">
	 <label for="fname"></label>
	 <label for="fname"> Amount </label>
    <input type="text"  name="r2" placeholder="Amount">
	 <label for="fname"> Card No </label>
    <input type="text"  name="r3" placeholder="Card number">
	 <label for="fname"> CVV </label><br />
  <input type="text"  name="r4" placeholder="CVV">
    
  	 <label for="lname"></label>
  	 <input type="submit" name="Submit" value="Click Here to Donate Money">
	
  </form>
</div>



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");

try{
int x=stmt.executeUpdate("insert into donation(name,amount,cardno,cvv) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
if(x!=0){
%>
<script>

alert("Amount Donated  Successfully");
</script>
<%
}
}catch(Exception e){
out.print(e);
}
}
 %>
</body>

</html>
