<!DOCTYPE html>
<html lang="en">

<head>
	<link href="style.css" rel="stylesheet">
	<link href="form.css" rel="stylesheet">
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
					<li><a href="">MEMBERS</a>
						<div class="sub">
							<span class="submenu"><a href="">List</a></span>
							<span class="submenu"><a href="">Create</a></span>
							<span class="submenu"><a href="">Update</a></span>
							<span class="submenuEnd"><a href="">Delete</a></span>
						</div>
					</li> 
					<li><a href="">VOLUNTEERS</a>
						<div class="sub">
							<span class="submenu"><a href="">List</a></span>
							<span class="submenu"><a href="">Create</a></span>
							<span class="submenu"><a href="">Update</a></span>
							<span class="submenuEnd"><a href="">Delete</a></span>
						</div>
					</li> 
					<li><a href="">ACTIVITIES</a>
						<div class="sub">
							<span class="submenu"><a href="">List</a></span>
							<span class="submenu"><a href="">Create</a></span>
							<span class="submenu"><a href="">Update</a></span>
							<span class="submenuEnd"><a href="">Delete</a></span>
						</div>
					</li> 
					<li><a href="">GROUP HOMES</a>
					<div class="sub">
							<span class="submenu"><a href="">List</a></span>
							<span class="submenu"><a href="">Create</a></span>
							<span class="submenu"><a href="">Update</a></span>
							<span class="submenuEnd"><a href="">Delete</a></span>
						</div>
					</li>
					<li><a href="">REPORTS</a>
						<div class="sub">
							<span class="submenu"><a href="">Activity Lists</a></span>
							<span class="submenu"><a href="">Birthday List</a></span>
							<span class="submenu"><a href="">Mailing List</a></span>
							<span class="submenuEnd"><a href="">Delete</a></span>
						</div>
					</li>
					<li><a href="index">LOG OUT</a></li> 
				</ul>
			</nav>
		</div>
	</header>


<section id="welcome-bg">
  <div class="container"> 
  	 <!-- Div class "welcome" is contained in individual pages, as well as any other divs within container. -->
     <jsp:include page="<%=content%>" />
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
