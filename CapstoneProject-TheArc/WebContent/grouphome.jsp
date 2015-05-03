<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">

<% 
		ArrayList<GroupHome> grouphomes;
		int i;
		
		grouphomes = GroupHomeDAO.getGroupHomes();
		String GRP_Name  = null;
		String GRP_Add1  = null;
		String GRP_Add2  = null;
		String GRP_City  = null;
		String GRP_State = null;
		String GRP_Zip   = null;

		if(request.getMethod().equalsIgnoreCase("GET")){
			for(GroupHome grouphome : grouphomes){
				grpName  = grouphome.getGRP_Name();
				grpAdd1  = grouphome.getGRP_Add1();
				grpAdd2  = grouphome.getGRP_Add2();
				grpCity  = grouphome.getGRP_City();
				grpState = grouphome.getGRP_State();
				grpZip   = grouphome.getGRP_Zip();
								
			}
		}
		
		if(request.getMethod().equalsIgnoreCase("POST")){
			if(request.getParameter("grp_ID_Update") != null){
				String grouphomeID = request.getParameter("grp_ID_Update");
				System.out.println("update");
				
				grpName = request.getParameter("grp_Name");
				grpAdd1 = request.getParameter("grp_Add1");
		 		grpAdd2  = request.getParameter("grp_Add2");
		 		grpCity  = request.getParameter("grp_City");
		 		grpState = request.getParameter("grp_State");
		 		grpZip   = request.getParameter("grp_Zip");
		 		
		 		GroupHome grouphome = new GroupHome();
		 		grouphome.setGRP_ID(grouphomeID);
		 		grouphome.setGRP_Name(grouphomeID);
		 		grouphome.setGRP_Add1(grouphomeID);
		 		grouphome.setGRP_Add2(grouphomeID);
		 		grouphome.setGRP_City(grouphomeID);
		 		grouphome.setGRP_State(grouphomeID);
		 		grouphome.setGRP_Zip(grouphomeID);
		 		
		 		GroupHomeDAO.updateGroupHome(grouphome);
		 		response.sendRedirect("grouphome.jsp");
		 		return;
			}
		 		
		 		
				
		}
			
		if(request.getParameter("GRP_ID") != null)
		{
		String grouphomeID = request.getParameter("GRP_ID");
		System.out.println("delete");
		int status = GroupHomeDAO.removeGroupHome(grouphomeID);
		response.sendRedirect("grouphome.jsp");
		return;
		}
		
		if(request.getParameter("GRP_ID") == null)
		{
		System.out.println("create");
		grpName = request.getParameter("GRP_Name");
		grpAdd1 = request.getParameter("GRP_Add1");
 		grpAdd2  = request.getParameter("GRP_Add2");
 		grpCity  = request.getParameter("GRP_City");
 		grpState = request.getParameter("GRP_State");
 		grpZip   = request.getParameter("GRP_Zip");
 		
		
 		GroupHome grouphome = new GroupHome();
		grouphome.setGRP_Name(grpName);
		grouphome.setGRP_Add1(grpAdd1);
		grouphome.setGRP_Add2(grpAdd2);
		grouphome.setGRP_City(grpCity);
		grouphome.setGRP_State(grpState);
		grouphome.setGRP_Zip(grpZip);
 
		
		GroupHomeDAO.addGroupHome(grouphome);
		response.sendRedirect("grouphome.jsp");
		return;
		}
		
				
			
				
			
%>


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
    
<title>Group Home Forms</title>
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
     Group Home Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST MEMBERS SECTION -->
		<div class="accordion" id="section1">List Group Homes<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Get Group Home List</label>
			  <div class="col-md-4">
				<button id="getMembers" name="getMembers" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN CREATE MEMBER SECTION -->
		<div class="accordion" id="section2">Create Group Home<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Name">Group Home Name</label>  
			  <div class="col-md-4">
			  <input id="grp_Name" name="grp_Name" type="text" placeholder="Group Home" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add1">Address 1</label>  
			  <div class="col-md-4">
			  <input id="grp_Add1" name="grp_Add1" type="text" placeholder="Address" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add2">Address 2</label>  
			  <div class="col-md-4">
			  <input id="grp_Add2" name="grp_Add2" type="text" placeholder="Address 2" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_City">City</label>  
			  <div class="col-md-4">
			  <input id="grp_City" name="grp_City" type="text" placeholder="City" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_State">State</label>  
			  <div class="col-md-4">
			  <input id="grp_State" name="grp_State" type="text" placeholder="State" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_ZIP">ZIP</label>  
			  <div class="col-md-2">
			  <input id="grp_ZIP" name="grp_ZIP" type="text" placeholder="ZIP" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Group Home</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-success">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
		<!-- BEGIN UPDATE MEMBER SECTION -->
		<div class="accordion" id="section2">Update Group Home<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_ID">Group Home ID</label>  
			  <div class="col-md-5">
			  <input id="grp_ID" name="grp_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Name">Group Home Name</label>  
			  <div class="col-md-4">
			  <input id="grp_Name" name="grp_Name" type="text" placeholder="Group Home" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add1">Address 1</label>  
			  <div class="col-md-4">
			  <input id="grp_Add1" name="grp_Add1" type="text" placeholder="Address" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add2">Address 2</label>  
			  <div class="col-md-4">
			  <input id="grp_Add2" name="grp_Add2" type="text" placeholder="Address 2" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_City">City</label>  
			  <div class="col-md-4">
			  <input id="grp_City" name="grp_City" type="text" placeholder="City" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_State">State</label>  
			  <div class="col-md-4">
			  <input id="grp_State" name="grp_State" type="text" placeholder="State" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_ZIP">ZIP</label>  
			  <div class="col-md-2">
			  <input id="grp_ZIP" name="grp_ZIP" type="text" placeholder="ZIP" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Update Group Home</label>
			  <div class="col-md-4">
				<button id="update" name="update" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
		</div>
		
	<!-- BEGIN DELETE MEMBER SECTION -->
	<div class="accordion" id="section4">Delete Group Home<span></span></div>
			<div class="content">
			<p>			<form class="form-horizontal">
			<fieldset>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_ID">Group Home ID</label>  
			  <div class="col-md-5">
			  <input id="grp_ID" name="grp_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Delete Group Home</label>
			  <div class="col-md-4">
				<button id="delete" name="delete" class="btn btn-danger">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form>
			</p>
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
