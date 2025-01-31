 <%@ page import="java.sql.*" %>

<%

Connection conn;
Statement stmt;
String a,b,c,d,e,f,g;
a=request.getParameter("id");
b=request.getParameter("pn");
c=request.getParameter("pa");
d=request.getParameter("ad");
e=request.getParameter("time");
f=request.getParameter("mn");
g=request.getParameter("doctor");
if(a!=null)
{
	try
{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
stmt=conn.createStatement();

stmt.executeUpdate("update appointrecords set ID='"+a+"',Patient='"+b+"',DOB='"+c+"',Date='"+d+"',Time='"+e+"',Mobile='"+f+"',Doctor='"+g+"' where ID='"+a+"'");


}catch(SQLException ee)
{out.println(ee);}
}%>

<h1>Record Updated Successfully</h1>