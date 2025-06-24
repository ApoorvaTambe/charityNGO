<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
.style1 {
	color: #000000;
	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
	font-weight: bold;
}
.style2 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-style: italic;
}
</style>
<body>
<%@ include file="hometabs.html" %>
<div class="w3-container">
  <h2 align="center">About us </h2>
  <p>&nbsp;</p>
</div>
 <center>
 <div class="w3-content w3-section" style="max-width:800px"  >   
        <img class="mySlides w3-animate-top" src="img/img_bg_1.jpg" style="width:100%">
        <img class="mySlides w3-animate-bottom" src="img/img_bg_2.jpg" style="width:100%">
    <img class="mySlides w3-animate-top" src="img/img_bg_3.jpg" style="width:100%">	  </div>
	</center>
	<br>
<br>

<table width="1185" height="258" border="0" align="center">
<tr>
  <td><div align="justify">
   
      <p>&nbsp;</p>
      <p class="style1 style2">Generations For Peace is a leading global non-profit peacebuilding organisation founded by HRH Prince Feisal Al Hussein in 2007.

Dedicated to sustainable conflict transformation at the grassroots, Generations For Peace empowers volunteer leaders of youth to promote active tolerance and responsible citizenship in communities experiencing different forms of conflict and violence.

Carefully facilitated sport-based games, art, advocacy, dialogue, and empowerment activities provide an entry point to engage children, youth, and adults, and a vehicle for integrated education and sustained behavioural change.</p>
  
  </div>    </td>
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

</body>
</html>
