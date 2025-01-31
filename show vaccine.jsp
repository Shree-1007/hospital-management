<%@ page import="java.sql.*" %>


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
<table style="text-align: left; width: 1412px; height: 41px;margin-top:50px;"
 border="1" cellpadding="2" cellspacing="2">
  <tbody>
  <b>
    <tr style="font-weight:bold;">
      <td align="undefined" valign="undefined">Name</td>
      <td align="undefined" valign="undefined">Aadhar Number</td>
	  <td align="undefined" valign="undefined"> &nbsp;REQUIRED</td>
      <td align="undefined" valign="undefined">Dose </td>
      <td align="undefined" valign="undefined">Vaccine Name </td>
      <td align="undefined" valign="undefined">TIME</td>
      <td align="undefined" valign="undefined">Date</td>
    </tr><b>
	
	<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
ResultSet rs;
String u,p,a,b,c,d,e;

u=request.getParameter("nm");
p=request.getParameter("aa");
a=request.getParameter("mn");
b=request.getParameter("dose");
c= request.getParameter("vcc");
d=request.getParameter("time");
e=request.getParameter("da");
rs=stmt.executeQuery("select * from vaccine"); 
while(rs.next())
{
	u=rs.getString("Name");
	p=rs.getString("Aadhar");
	a=rs.getString("Mobile");
	b=rs.getString("Dose");
	c=rs.getString("Vaccine");
	d=rs.getString("Time");
	e=rs.getString("Date");
	
	%>
	<tr>
	<td><%=u%></td>
	<td><%=p%></td>
	<td><%=a%></td>
	<td><%=b%></td>
	<td><%=c%></td>
	<td><%=d%></td>
	<td><%=e%></td>

	</tr>
	
	<%
}



}catch(SQLException ee)
{out.println(ee);}
%>
	
	
  </tbody>
</table>
<br>
</body>
</html>
