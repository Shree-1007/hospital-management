<html>
<head>
<title> City Hospital</title>
</head>
<header>
<img src="Logo.png"   align="left"style="width:70px;height:60px;">
<img src="Logo.png"   align="right" style="width:70px;height:60px;">

<h1 style="color:black;margin-top:15px;font-family:Trebuchet MS ;"><center>CITY HOSPITAL</center></h1>
</header>
<hr style="color:blue;">

<body style="background-image:url('back3.jpg');background-repeat:no-repeat;background-size:cover;">

<a href="http://localhost:8080/hospital.html">
 <img src="home.jpg"  alt="staff info" style="border-radius:50%;width:40px;"></a>
<%@ page import="java.sql.*,javax.swing.*,java.awt.*,java.awt.event.*"%>

<%
String u,p;
u=request.getParameter("ln");
p=request.getParameter("ps");

if(u.equals("shreekant")  && p.equals("123"))
{%>
<center>
	<table style =" margin:50px;font-family:Georgia;color:green;margin-top:150px;">
 <tbody>

<tr>

<td align="center">
<a href="http://localhost:8080/showappoint.jsp">
<img src="icon2.png"  alt="staff info" style="border-radius:50%;width:125px;border:5px solid #555;"><br><br><center>SEE
APPOINTMENTS</center></a></td>


<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td align="center">

<a href="http://localhost:8080/showmedicine.jsp">
 <img src="icon12.jpg"  alt="staff info" style="border-radius:50%;width:125px;border:5px solid #555;"><br><br><center> MEDICINE REQUIRED</center></a></td>

<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td align="center">
<a href="http://localhost:8080/show%20vaccine.jsp">
<img src="icon11.jpg"  alt="staff info" style="border-radius:50%;width:125px;border:5px solid #555;"><br><br><center>VACCINE CANDIDATE</center></a></td>

<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>


</tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

<tr>
<td align="center">
<a href="http://localhost:8080/showemeet.jsp">
 <img src="icon8.jpg"  alt="staff info" style="border-radius:50%;width:125px;border:5px solid #555;"><br><br><center>EMEET-REGESTRATIONS</center></td></a>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

 <td align="center">
<a href="http://localhost:8080/showhelpline.jsp">
<img src="icon3.jpg"  alt="staff info" style="border-radius:50%;width:125px;border:5px solid #555;"><br><br><center>HELPLINE QUESTIONS</center></a></td>

</tr>
</center>
<%
}
else{
	out.println("enter correct username and password");
}
%>