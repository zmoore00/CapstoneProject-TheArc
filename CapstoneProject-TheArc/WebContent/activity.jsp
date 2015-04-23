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
    
<title>Activity Forms</title>
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
     Activity Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST ACTIVITIES SECTION -->
		<div class="accordion" id="section1">List Activities<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Get Activity List</label>
			  <div class="col-md-4">
				<button id="getActivities" name="getActivities" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN CREATE ACTIVITIES SECTION -->
		<div class="accordion" id="section2">Create Activity<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  
			  <div class="col-md-4">
			  <input id="act_Name" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Activity Type</label>
			  <div class="col-md-2">
				<select id="act_Type" name="act_Type" class="form-control">
				  <option value="Bowling">Bowling</option>
				  <option value="Dance">Dance</option>
				  <option value="Swimming">Swimming</option>
				  <option value="Fishing">Fishing</option>
				  <option value="Special">Special</option>
				  <option value="Misc">Misc</option>
				</select>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  
			  <div class="col-md-4">
			  <input id="act_Date" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  
			  <div class="col-md-4">
			  <input id="act_Loc" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Activity</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE ACTIVITY SECTION -->
	<div class="accordion" id="section3">Update Activity (Add Counts)<span></span></div>
		<div class="content">
			<p><form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Name">Activity Name</label>  
			  <div class="col-md-4">
			  <input id="act_Name" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Make sure activity name is correct!</p>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_VolCount">Volunteer Count</label>  
			  <div class="col-md-4">
			  <input id="act_VolCount" name="act_VolCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_MemCount">Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_MemCount" name="act_MemCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_NonCount">Non Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_NonCount" name="act_NonCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_TotCount">Total Count</label>  
			  <div class="col-md-4">
			  <input id="act_TotCount" name="act_TotCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Revenue</label>  
			  <div class="col-md-4">
			  <input id="act_Revenue" name="act_Revenue" type="text" placeholder="$0.00" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Expenses</label>  
			  <div class="col-md-4">
			  <input id="act_Expense" name="act_Expense" type="text" placeholder="$0.00" class="form-control input-md" required="">

			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="update">Update Activity</label>
			  <div class="col-md-4">
				<button id="update" name="update" class="btn btn-primary">Submit</button>
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
