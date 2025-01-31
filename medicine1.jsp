<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String a,b,c,d;
a=request.getParameter("un");
b=request.getParameter("ps");
c=request.getParameter("pb");
d=request.getParameter("ad");
stmt.executeUpdate("insert into medicine values('"+a+"','"+b+"','"+c+"','"+d+"')");


conn.close();
}catch(SQLException e)
{out.println(e);}
%>
<html>
<body>
<body>
<h1>you medicine will be delievered within 24hrs.</h1>
<br>
<h3>
<a href="http://localhost:8080/hospital.html">GO BACK TO HOME PAGE</a>
</body>
</html>
