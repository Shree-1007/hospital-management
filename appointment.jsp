<%@ page import="javax.swing.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String a,b,c,d,e,f,g;
a=request.getParameter("id");
b=request.getParameter("pn");
c=request.getParameter("pa");
d=request.getParameter("ad");
e=request.getParameter("time");
f=request.getParameter("mn");
g=request.getParameter("doctor");


stmt.executeUpdate("insert into appointrecords values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");

out.println("Appointment Created Successfully");

conn.close();
}catch (SQLException ee)
{out.println(ee);}
%>
<html>
<body>
<br>
<h3>
<a href="http://localhost:8080/hospital.html">GO BACK TO HOME PAGE</a><h3>
</body>
</html>