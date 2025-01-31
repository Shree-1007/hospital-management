<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String a,b,c;
a=request.getParameter("nm");
b=request.getParameter("mb");
c=request.getParameter("pb");

stmt.executeUpdate("insert into emeet values('"+a+"','"+b+"','"+c+"')");


conn.close();
}catch(SQLException e)
{out.println(e);}
%>
<html>
<body>
<body>
<h1>you will get medication and treatment details on your respective mobile number.</h1>
<br>
<h3>
<a href="http://localhost:8080/hospital.html">GO BACK TO HOME PAGE</a>
</body>
</html>
