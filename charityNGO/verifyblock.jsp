<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
-->
</style>
</head>

<body>
 <%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<form id="form1" name="form1" method="post" action="">
  <div align="center">
    <input type="submit" name="order" value="Verify Order data" />
	  <input type="submit" name="donation" value="Verify Donation data" />
  
  </div>
</form>


<div align="center">
  <p>&nbsp;</p>
  <p class="style1">
    <% 
if(request.getParameter("order")!=null){

rst=stmt.executeQuery("select d.productname,d.productCast,d.quantity,d.totalAmount,d.address,d.cardHolderName,d.cardtype,d.cardNum,d.cvv,d.storephone,d.custphone,db.datablock from orderlist d,orderblock db where d.orderid=db.id");
int flag=0;
while(rst.next()){
String s1=rst.getString(1);
String s2=rst.getString(2);
String s3=rst.getString(3);
String s4=rst.getString(4);
String s5=rst.getString(5);
String s6=rst.getString(6);
String s7=rst.getString(7);
String s8=rst.getString(8);
String s9=rst.getString(9);
String s10=rst.getString(10);
String s11=rst.getString(11);



String block=rst.getString(12);
//out.print("blocktable value"+block);

String fulldata=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11;
String blockvalue=Integer.toString(fulldata.hashCode());

//out.print("full data value"+fulldata);
//out.print("Hashcode value"+blockvalue);
 
if(block.equals(blockvalue)){

flag+=0;
}else{

flag+=1;
}   


}

if(flag==0){
out.print("Data is same and matched ");
}else{
out.print("Data is Miss-matched and currupted ");

} 

//out.println(fulldata+"\n");

}


 %>
 
 
 
 
 <% 
if(request.getParameter("donation")!=null){

rst=stmt.executeQuery("select d.ngoname,d.amount,d.sponsername,d.accountno,d.cvv,db.datablock from donation d,donationblock db where d.id=db.id");
int flag=0;
while(rst.next()){
String s1=rst.getString(1);
String s2=rst.getString(2);
String s3=rst.getString(3);
String s4=rst.getString(4);
String s5=rst.getString(5);





String block=rst.getString(6);
//out.print("blocktable value"+block);

String fulldata=s1+s2+s3+s4+s5;
String blockvalue=Integer.toString(fulldata.hashCode());

//out.print("full data value"+fulldata);
//out.print("Hashcode value"+blockvalue);
 
if(block.equals(blockvalue)){

flag+=0;
}else{

flag+=1;
}   


}

if(flag==0){
out.print("Data is same and matched ");
}else{
out.print("Data is Miss-matched and currupted ");

} 

//out.println(fulldata+"\n");

}


 %>
  </p>
</div>
</body>
</html>
