<%@ page import="java.sql.*" %>
<%

String id=request.getParameter("ID");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();

stmt.executeUpdate("delete from appointrecords where ID='"+id+"'");
conn.close();
}catch (SQLException ee)
{out.println(ee);}
%>
Rcord deleted successfull