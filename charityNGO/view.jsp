<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.text.SimpleDateFormat,java.util.Date" errorPage="" %>
<%
Date cd=new Date();

String string ="2025-07-27 08:34:55.705";
Date ld = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").parse(string);

if(cd.after(ld)){
response.sendRedirect("index.html");
 
}
%>