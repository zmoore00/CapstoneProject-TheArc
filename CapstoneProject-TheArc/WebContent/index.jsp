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
     index page is not done yet
    </div>
	<div id="subtext">
	<table><tr><td style = "width: 50%;">
	<p style = "text-align: left; text-weight:bold; text-size:45px;">Easy All-In-One Web Based Member Tracking Solution<br />
<ul style="list-style: squre; text-align:left;">
<li>Choose what to CRUD at Menu on top </li>
<li>Click what to do and Input Information</li>
<li>Report Generated Automatically</li>
</ul>
	</p>
	</td>
	<td>
	<p>
	More content here. More content here. More content here. More content here. More content here. 
	More content here. More content here. More content here. More content here. More content here.
	More content here. More content here.  
	</p>
	</td></tr>
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
