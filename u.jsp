<%@ page import="java.sql.*" %>
<%
Connection conn;
Statement stmt;
String u,p,a,b;

u=request.getParameter("un");
p=request.getParameter("ps");
a=request.getParameter("pb");
b=request.getParameter("ad");
if(u!=null)
{
	try
{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
stmt=conn.createStatement();

stmt.executeUpdate("update medicine set Name='"+u+"',Mobile='"+p+"',Medicines='"+a+"',Address='"+b+"' where Name='"+u+"'");


}catch(SQLException ee)
{out.println(ee);}
}%>

<h1>Record Updated Successfully</h1>

........................................................

...............................................................................................................................................	