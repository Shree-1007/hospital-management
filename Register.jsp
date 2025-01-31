<%@ page import = "java.sql.*" %>

<%
try
{
String a,b,c,d,f,g,h,m;
a=request.getParameter("fn");
b=request.getParameter("ln");
c=request.getParameter("db");
d=request.getParameter("em");
m=request.getParameter("pn");
f=request.getParameter("cn");
g=request.getParameter("un");
h=request.getParameter("ps");


Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21", "root" , "1234");
Statement stmt=conn.createStatement();
stmt.executeUpdate("insert into tab1 values('"+a+"','"+b+"','"+c+"','"+d+"','"+m+"','"+f+"','"+g+"','"+h+"')");
out.println("<h1>Record Inserted Successfully<h1>");
conn.close();

}catch(SQLException e)
{out.println(e);}
%>
