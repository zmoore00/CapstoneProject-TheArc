<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link href="style.css" rel="stylesheet">
	<link href="form.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<script type="text/javascript" src="jquery.cookie.js"></script> <!--required only if using cookies-->
    <script type="text/javascript" src="jquery.accordion.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.accordion').accordion({defaultOpen: 'some_id'}); //some_id section1 in demo
        });
    </script>
   
<title>The ARC for the River Valley</title>
</head>

<body>
<!--  Everything from div id = "wrapper" through div id = "welcome-bg" goes on individual pages. This is so that the nav bar isn't shown on the login page. -->
<div id="wrapper">
	<header>		
	<div>
	<!-- BEGIN navigation
	 <li> = visible nav bar item
	 <div class="sub"> = hidden drop down item -->
			<nav>
				<ul>
					<li><a href="index.jsp">HOME</a>
						<div class="sub">
						</div>
					</li> 
					<li><a href="member.jsp">MEMBERS</a>
						<div class="sub">
						</div>
					</li> 
					<li><a href="volunteer.jsp">VOLUNTEERS</a>
						<div class="sub">
						</div>
					</li> 
					<li><a href="activity.jsp">ACTIVITIES</a>
						<div class="sub">
						</div>
					</li> 
					<li><a href="grouphome.jsp">GROUP HOMES</a>
					<div class="sub">
						</div>
					</li>
					<li><a href="report.jsp">REPORTS</a>
						<div class="sub">
						</div>
					</li> 
				</ul>
			</nav>
		</div>
	</header>

<section id="welcome-bg">
  <div class="container"> 
  	 <div id="welcome">
     The Arc Membership Application<br />
    </div>
	<div id="subtext">
	<table style="margin: 30px 0 0 70px;">
	<tr>
	<td style = "width: 50%;">
	<p style = "text-align: left;">All-In-One Web Based Member Tracking Solution<br />
<ul style="list-style: squre; text-align:left;">
<li>Choose what to CRUD at Menu on top </li>
<li>Click what to do and Input Information</li>
<li>Report Generated Automatically</li>
</ul>
	</p>
	</td>
	<td style = "width: 25%; ">
	<p style = "text-align: left; ">
	Printable Version <br />
	<a href="http://www.arcrivervalley.org/Arc_Membership_App_2013.pdf" target="blank">Membership Application</a><br />
	<a href="http://www.arcrivervalley.org/Arc_Volunteer.pdf" target="blank">Volunteer Application</a><br />
	<a href="http://www.arcrivervalley.org/the-arc-recreation-events.html" target="blank">Events</a><br />
	</p>
	</td>
	<td style = "width: 19%; ">
	<p style = "text-align: left; ">Contact Dev. Team<br />
		<a href="mailto:eburke00@g.uafs.edu">Database Team</a><br />
		<a href="mailto:jcurra00@g.uafs.edu,jdavis16@g.uafs.edu,zmoore00@g.uafs.edu">Software Dev. Team</a><br />
		<a href="mailto:ncampb02@g.uafs.edu, kseo00@g.uafs.edu">Web Dev. Team</a><br />
	</p>
	
	</td>
	</tr>
	</table>
	</div>
  </div>		  
</section>

<section id="copy">
  <div class="">
    <div id="copyright">
    &copy; 2015 The Arc for the River Valley
    </div>
  </div>
</section>
</div>
</body>
</html>
