<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="stabs.html" %>
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
   	<td width="193"><strong>Amount</strong></td>
    <td width="141"><strong>Cardno</strong></td>
    <td width="148"><strong>cvv</strong></td>
	 <td width="148"></td>
	
  
  </tr>
  
  
  <% 
  
  rst=stmt.executeQuery("select bname,adhar,accountno,email,reason,id from benifshieayrequest  ");
  while(rst.next()){
  
   %>
  
<form action="" method="post">
  <tr bgcolor="grey">
    <td><input name="r1" type="text" readonly="true" value="<%= rst.getString(1) %>" /> </td>
    <td><input name="r2" type="text" readonly="true" value="<%= rst.getString(2) %>" />  </td>
    <td><input name="r3" type="text" readonly="true" value="<%= rst.getString(3) %>" /> </td>
	 <td><input name="r4" type="text" readonly="true" value="<%= rst.getString(4) %>" />  </td>
    <td><textarea name="r5" readonly="true"><%= rst.getString(5) %></textarea>   </td>
    <td><input name="r6" type="text" readonly="true" value="<%= rst.getString(6) %>" /></td>
	 <td><input name="r7" type="text"   />  </td>
    <td><input name="r8" type="text"  /> </td>
    <td><input name="r9" type="text"  /> </td>
	 <td><input name="r10" type="text"  /> </td>
	 <input name="demail" type="hidden" value="<%= rst.getString(4) %>" />
	  <td><input name="Submit" type="submit" /></td>
    
   </form>
    
  </tr>

  <% } %>
</table>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");

String s6=request.getParameter("r6");
String s7=request.getParameter("r7");
String s8=request.getParameter("r8");
String s9=request.getParameter("r9");
String s10=request.getParameter("r10");
String bemail=request.getParameter("demail");
int x=stmt.executeUpdate("insert into benifshieaydonation(bname,adhar,accountno,phone,reason,requestid,Donername,Amount,cardno,cvv) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
if(x!=0){
//------------------------------------


 // Get recipient's email-ID, message & subject-line from index.html page
	 try{
	 
    final String to = bemail;

    final String subject = "Donation Email ";

    final String messg = "you got the donation from "+s4+"with "+s3+ "amount";

 

    // Sender's email ID and password needs to be mentioned

  final String from = "ourprojectemails@gmail.com";

    final String pass = "oxipcucyayarblht";

 // final String from = "onlineawardssibm@gmail.com";

   // final String pass = "rzgmcdufzuuqwxmm";

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

  

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        //result = "Your mail sent successfully....";
		 %>
<script>alert("Your  email sent successfully....");

</script>
<%

    } catch (MessagingException mex) {

        mex.printStackTrace();

       // result = "Error: unable to send mail....";
		%>
<script>alert("Error: unable to send mail....");
//window.open("farmerlogin.jsp","_self");
</script>
<%
}
    
	
	//-----------------------------email ends------------------


 

 %>


//-----------------------------------
%>
<script>

alert("Donation Sent Successfully");
window.open("bdonations.jsp","_self");
</script>
<%
}
}
 %>

 
 
</body>

</html>
