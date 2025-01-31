<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String a,b;
b=request.getParameter("pn");
a=request.getParameter("pb");
stmt.executeUpdate("insert into helpline values('"+a+"','"+b+"')");


conn.close();
}catch(SQLException e)
{out.println(e);}
%>
<html>
<body>
<body>
<h1>your problem has been noted.our team will contact you soon.</h1>
<br>
<h3>
<a href="http://localhost:8080/hospital.html">GO BACK TO HOME PAGE</a>
</body>
</html>
