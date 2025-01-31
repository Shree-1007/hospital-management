<%@ page import="java.sql.*" %>
<%

String name=request.getParameter("Name");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
stmt.executeUpdate("delete from medicine where Name='"+name+"'");
conn.close();
}catch(SQLException ee)		 
{out.println(ee);}
%> 
<h1>Record deleted Successfully</h1>	