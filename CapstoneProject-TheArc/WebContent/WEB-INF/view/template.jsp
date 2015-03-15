<!DOCTYPE html>
<html lang="en">

<head>
	<link href="style.css" rel="stylesheet">
	<link href="form.css" rel="stylesheet">
</head>

<body>
<div id="wrapper">
	<header>		
	<div>
	<!-- BEGIN navigation
	 <li> = visible nav bar item
	 <div class="sub"> = hidden drop down item -->
			<nav>
				<ul>
					<li><a href="index">LOGIN</a></li> 
					<li><a href="">MEMBERS</a>
						<div class="sub">
							<a href="">List Members</a>
							<a href="">Create Member</a>
							<a href="">Update Member</a>
							<a href="">Delete Member</a>
						</div>
					</li> 
					<li><a href="">VOLUNTEERS</a>
						<div class="sub">
							<a href="">List Volunteers</a>
							<a href="">Create Volunteer</a>
							<a href="">Update Volunteer</a>
							<a href="">Delete Volunteer</a>
						</div>
					</li> 
					<li><a href="">ACTIVITIES</a>
					<div class="sub">
							<a href="">List Activities</a>
							<a href="">Create Activity</a>
							<a href="">Update Activity</a>
							<a href="">Delete Activity</a>
						</div>
					</li> 
					<li><a href="">GROUP HOMES</a>
					<div class="sub">
							<a href="">List Group Homes</a>
							<a href="">Create Group Home</a>
							<a href="">Update Group Home</a>
							<a href="">Delete Group Home</a>
						</div>
					</li>
				</ul>
			</nav>
		</div>
	</header>


<section id="welcome-bg">
  <div class="container"> 
 <!-- Main page content goes here -->
 <jsp:include page="<%=content%>" />
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
