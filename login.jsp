<%@ page import="java.sql.*" %>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
String u,p;

u=request.getParameter("un");
p=request.getParameter("ps");
ResultSet rs; 
stmt.executeUpdate("insert into tab21 values('"+u+"','"+p+"')");
out.println(" Record inserted successfully");
conn.close();
}catch (SQLException e)
{out.println(e);}
%>
<html>
<body>
<a href="http://localhost:8080/project.jsp">see record</a>
</body>
</html>

 