<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String a,b,c,d,f,e,g;
a=request.getParameter("nm");
b=request.getParameter("aa");
c=request.getParameter("mn");
d=request.getParameter("dose");
e= request.getParameter("vcc");
f=request.getParameter("time");
g=request.getParameter("da");

stmt.executeUpdate("insert into vaccine values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
conn.close();
}catch(SQLException ee)
{out.println(ee);}
%>
<html>
<body>
<body>
<h1>vaccine regestration successfull</h1>
<br>
<h3>
<a href="http://localhost:8080/hospital.html">GO BACK TO HOME PAGE</a>
</body>
</html>
