<%@ page import="javax.swing.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.sql.*" %>
<%
try
{
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","1234");
Statement stmt=conn.createStatement();
String a,b,c,d;
a=request.getParameter("eventDate");
b=request.getParameter("eventName");
c=request.getParameter("eventVenue");
d=request.getParameter("eventTime");



stmt.executeUpdate("insert into event values('"+a+"','"+b+"','"+c+"','"+d+"')");

out.println("Event Created Successfully");

conn.close();
}catch (SQLException ee)
{out.println(ee);}
%>
