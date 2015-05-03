<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">


<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link href="style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<script type="text/javascript" src="jquery.cookie.js"></script> <!--required only if using cookies-->
    <script type="text/javascript" src="jquery.accordion.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.accordion').accordion({defaultOpen: 'some_id'}); //some_id section1 in demo
        });
    </script>
    
<title>Report Forms</title>
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
					<li><a href="index">LOG OUT</a></li> 
				</ul>
			</nav>
		</div>
	</header>


<section id="welcome-bg">
  <div class="container"> 
   <div id="welcome">
     Generate Reports
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN MAILING LIST SECTION -->
		<div class="accordion" id="section1">BIRTHDAY LIST<span></span></div>
			<div class="content">
			<p><form class="form-horizontal">
			<fieldset>
				
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Select Month</label>
			  <div class="col-md-2">
				<select id="mailingList" name="mailingList" class="form-control">
				  <option value="1">January</option>
				  <option value="2">February</option>
				  <option value="3">March</option>
				  <option value="4">April</option>
				  <option value="5">March</option>
				  <option value="6">June</option>
				  <option value="7">July</option>
				  <option value="8">August</option>
				  <option value="9">September</option>
				  <option value="10">October</option>
				  <option value="11">November</option>
				  <option value="12">December</option>
				</select>
			  </div>
			  <div class="col-md-4"><button id="mailingList" name="mailingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>
			
			
			
			
			</fieldset>
			</form>
			</div>
		
		<!-- BEGIN BOWLING LIST SECTION -->
		<div class="accordion" id="section1">EXPIRED MEMBERS<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Select Month</label>
			  <div class="col-md-2">
				<select id="mailingList" name="mailingList" class="form-control">
				  <option value="1">January</option>
				  <option value="2">February</option>
				  <option value="3">March</option>
				  <option value="4">April</option>
				  <option value="5">March</option>
				  <option value="6">June</option>
				  <option value="7">July</option>
				  <option value="8">August</option>
				  <option value="9">September</option>
				  <option value="10">October</option>
				  <option value="11">November</option>
				  <option value="12">December</option>
				</select>
			  </div>
			  <div class="col-md-4"><button id="mailingList" name="mailingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
			
		<!-- BEGIN SWIMMING LIST SECTION -->
		<div class="accordion" id="section1">Volunteer Hours<span></span></div>
			<div class="content">
			<p><form class="form-horizontal">
			<fieldset>
				
			 <label class="col-md-4 control-label" for="mem_CurFlag">Select Month</label>
			  <div class="col-md-2">
				<select id="mailingList" name="mailingList" class="form-control">
				  <option value="1">January</option>
				  <option value="2">February</option>
				  <option value="3">March</option>
				  <option value="4">April</option>
				  <option value="5">March</option>
				  <option value="6">June</option>
				  <option value="7">July</option>
				  <option value="8">August</option>
				  <option value="9">September</option>
				  <option value="10">October</option>
				  <option value="11">November</option>
				  <option value="12">December</option>
				</select>
			  </div>
			  <div class="col-md-4"><button id="mailingList" name="mailingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
</div>
</section>
</div>
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
