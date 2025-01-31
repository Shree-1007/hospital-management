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
      <td align="undefined" valign="undefined">PATIENT ID</td>
      <td align="undefined" valign="undefined">PATIENT NAME</td>
      <td align="undefined" valign="undefined">DOB&nbsp; &nbsp; &nbsp; &nbsp; </td>
      <td align="undefined" valign="undefined">DATE&nbsp; </td>
      <td align="undefined" valign="undefined">TIME&nbsp; &nbsp; </td>
      <td align="undefined" valign="undefined">MOBILE</td>
      <td align="undefined" valign="undefined">DOCTOR &nbsp;REQUIRED</td>
	   <td align="undefined" valign="undefined">UPDATE</td>
	    <td align="undefined" valign="undefined">DELETE</td>
    </tr><b>
	
	<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
ResultSet rs;
String u,p,a,b,c,d,e;
u=request.getParameter("id");
p=request.getParameter("pn");
a=request.getParameter("pa");
b=request.getParameter("ad");
c=request.getParameter("time");
d=request.getParameter("mn");
e=request.getParameter("doctor");
rs=stmt.executeQuery("select * from appointrecords"); 
while(rs.next())
{
	u=rs.getString("ID");
	p=rs.getString("Patient");
	a=rs.getString("DOB");
	b=rs.getString("Date");
	c=rs.getString("Time");
	d=rs.getString("Mobile");
	e=rs.getString("Doctor");
	
	%>
	<tr>
	<td><%=u%></td>
	<td><%=p%></td>
	<td><%=a%></td>
	<td><%=b%></td>
	<td><%=c%></td>
	<td><%=d%></td>
	<td><%=e%></td>
	<td><a href="a.jsp?ID=<%=u%>">Edit</a></td>
	<td><a href="da.jsp?ID=<%=u%>">delete</a></td>

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
