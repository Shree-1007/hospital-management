<%@ page import = "java.sql.*"%>
<%
try{
	Connection conn;
	Statement stmt;
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
	stmt=conn.createStatement();
	stmt.executeUpdate("insert into tab21 values('happy','new year')");
	out.println("successfully inserted <br>");
	out.println("you can proceed for further process");
	
}catch(SQLException e)
{out.println(e);}
%>