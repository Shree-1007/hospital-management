<%@ page import="java.sql.*" %>
<%

String id=request.getParameter("ID");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db21","root","1234");
Statement stmt=conn.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select * from appointrecords where ID='"+id+"'");
while(rs.next())
{
	%>
	
	<html>
<head>
<title> City Hospital</title>
</head>
<header>
<img src="Logo.png"   align="left"style="width:70px;height:60px;">
<img src="Logo.png"   align="right" style="width:70px;height:60px;">

<h1 style="color:black;margin-top:15px;font-family:Trebuchet MS ;"><center>CITY HOSPITAL</center></h1>
</header>
<hr style="color:blue;">

<body style="background-image:url('back3.jpg');background-repeat:no-repeat;background-size:cover;">
<a href="http://localhost:8080/hospital.html">
 <img src="home.jpg"  alt="staff info" style="border-radius:50%;width:40px;"></a>

 <form method="post" action="http://localhost:8080/upapp.jsp" name="appointment">
 <h2 style="color:brown;font-family: Arial;">APPOINTMENT FORM</h2>

  <table style="text-align: left; width: 628px; height: 600px;margin-left:100px;"
 border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td align="undefined" valign="undefined">PATIENT
ID</td>
        <td align="undefined" valign="undefined"><input
 size="50" name="id" value="<%=rs.getString("ID") %>"style="border-radius:12px;height:30px;"></td>
      </tr>
      <tr>
        <td align="undefined" valign="undefined">PATIENT NAME</td>
        <td align="undefined" valign="undefined"><input
 size="50" name="pn"value="<%=rs.getString("Patient") %>"style="border-radius:12px;height:30px;"></td>
      </tr>
	  	  <img src="app2.png" align="right"  style="width:600px;height:620px;">

      <tr>
        <td align="undefined" valign="undefined">DATE OF BIRTH</td>
        <td align="undefined" valign="undefined"><input
 size="50" name="pa"value="<%=rs.getString("DOB") %>"type="date"style="border-radius:12px;height:30px;"></td>
      </tr>
      <tr>
        <td align="undefined" valign="undefined">APPOINTMENT DATE</td>
        <td align="undefined" valign="undefined"><input
 size="50" name="ad" type="date"value="<%=rs.getString("Date") %>"style="border-radius:12px;height:30px;"></td>
      </tr>
	  

      <tr>
        <td align="undefined" valign="undefined">TIME</td>
        <td align="undefined" valign="undefined"><select name="time" name="tm"value="<%=rs.getString("Time") %>"style="border-radius:12px;height:30px;">
		<option>9:00am-11:30am</option>
		<option>12:30pm-2:00pm</option>
		<option>4:00pm-7:00pm</option>
		<option>7:00pm-9:00pm</option>
		<option>Emergancy</option></td>
      </tr>
      <tr>
        <td align="undefined" valign="undefined">MOBILE
        </td>
        <td align="undefined" valign="undefined"><input
 size="50" name="mn"value="<%=rs.getString("Mobile") %>"style="border-radius:12px;height:30px;"></td>
      </tr>
      <tr>
        <td align="undefined" valign="undefined">DOCTOR</td>
        
		<td align="undefined" valign="undefined"><select name="doctor" name="da"value="<%=rs.getString("Doctor") %>"style="border-radius:12px;height:30px;">
		<option>Dr.Shah(ENT)</option>
		<option>Dr.Kharat(Dentist)</option>
		<option>Dr.Verma(Cardiologist)</option>
		<option>Dr.Pooja(Gynaecologist)</option>
		<option>Dr.Peter(Neurologists)</option>
		<option>Dr.Sharma(Emergancy Room)</option>
		<option>Dr.Agrawal(pediatrician)</option>
      </tr>

      <tr style="margin-left:150px;">
       
        <td align="undefined" valign="undefined"><input
 name="submit" value="UPDATE" type="submit" style="border-radius: 8px;height:40px;width:70px;background-color:lightgreen;margin-left:200px;">
    </tbody>
  </table>
    <br>
</form>
<%
}
conn.close();
}catch(SQLException ee)
{out.println(ee);}
%> 

</body>
</html>
