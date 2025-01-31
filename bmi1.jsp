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

<%
float a=Float.parseFloat(request.getParameter("hg"));
float b=Float.parseFloat(request.getParameter("wg"));

float c=b/((a/100)*(a/100));
%>
<a href="http://localhost:8080/hospital.html">
 <img src="home.jpg"  alt="staff info" style="border-radius:50%;width:40px;"></a>
<h1> Your BMI is 
<%
out.println(String.valueOf(c));
%>
</h1><h3>WEIGHT CATEGORY&nbsp;=
<%

if(c<=18.5)
	out.println("Under Weight");

if(c>=18.5 && c<=25)
	out.println("Normal Weight");

if(c>=25 && c<=30)
	out.println("Over Weight");

if(c>=30 && c<=35)
	out.println("Obese Type I");

if(c>=35 && c<=39.9)
	out.println("Obese Type II");

if( c>=40)
	out.println("Obese Type III");
%>
<center>
<table style="text-align: left; width: 595px; height: 595px;"
 border="1" cellpadding="2" cellspacing="2" align="right">
  <tbody>
   <tr>
      <td align="undefined" valign="undefined">WEIGHT
CATEGORY</td>
      <td align="undefined" valign="undefined">DIET PLANS</td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">UNDER
WEIGHT</td>
      <td align="undefined" valign="undefined"><a href="https://www.healthline.com/health/exercise-to-gain-weight">CHECK DIET PLAN</a></td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">NORMAL
WEIGHT</td>
      <td align="undefined" valign="undefined"><a href="https://www.nhlbi.nih.gov/health/educational/lose_wt/eat/calories.htm">CHECK DIET PLAN</a></td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">OVER
WEIGHT</td>
      <td align="undefined" valign="undefined"><a href="https://www.bodybuilding.com/content/what-are-good-diet-and-exercise-programs-for-obese-people.html">CHECK DIET PLAN</a></td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">OBESE
TYPE I</td>
      <td align="undefined" valign="undefined"><a href="https://www.bodybuilding.com/content/what-are-good-diet-and-exercise-programs-for-obese-people.html">CHECK DIET PLAN</a></td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">OBESE
TYPE II</td>
      <td align="undefined" valign="undefined"><a href="https://www.bodybuilding.com/content/what-are-good-diet-and-exercise-programs-for-obese-people.html">CHECK DIET PLAN</a></td>
    </tr>
    <tr>
      <td align="undefined" valign="undefined">OBESE
TYPE III</td>
      <td align="undefined" valign="undefined"><a href="https://www.bodybuilding.com/content/what-are-good-diet-and-exercise-programs-for-obese-people.html">CHECK DIET PLAN</a></td>
    </tr>
  </tbody>
</table>
</center>
</body>
</html>
















