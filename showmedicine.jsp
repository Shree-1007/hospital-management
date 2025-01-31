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
      <td align="undefined" valign="undefined">NAME</td>
      <td align="undefined" valign="undefined">MOBILE</td>
      <td align="undefined" valign="undefined">MEDICINE REQUIRED&nbsp; &nbsp; &nbsp; </td>
	  <td align="undefined" valign="undefined">ADDRESS</td>
	   <td align="undefined" valign="undefined">UPDATE</a></td>
	    <td align="undefined" valign="undefined">  DELETE</a></td>
    
    </tr><b>
	
	<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
ResultSet rs;
String u,p,a,b;
u=request.getParameter("un");
p=request.getParameter("ps");
a=request.getParameter("pb");
b=request.getParameter("ad");
rs=stmt.executeQuery("select * from medicine"); 
while(rs.next())
{
	u=rs.getString("Name");
	p=rs.getString("Mobile");
	a=rs.getString("Medicines");
	b=rs.getString("Address");
	
	
	%>
	<tr>
	<td><%=u%></td>
	<td><%=p%></td>
	<td><%=a%></td>
	<td><%=b%></td>
	<td><a href="upmed.jsp?Name=<%=u%>">Edit</a></td>
	<td><a href="delete.jsp?Name=<%=u%>">delete</a></td>
	
	
	

	</tr>
	<%
}



}catch(SQLException ee)
{out.println(ee);}
%>
	