<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="news.css"> 
<meta charset="utf-8">
<title>Login</title>

</head>
<body>
    <div id="welcome">
     Group Homes
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST GROUP HOMES SECTION -->
		<div class="accordion" id="section1">List Group Homes<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Get Group Homes List</label>
			  <div class="col-md-4">
				<button id="getGroupHomes" name="getGroupHomes" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN CREATE GROUP HOME SECTION -->
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
			  <div class="col-md-5">
			  <input id="grp_Add1" name="grp_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="grp_Add2" name="grp_Add2" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_City">City</label>  
			  <div class="col-md-5">
			  <input id="grp_City" name="grp_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_State">State</label>  
			  <div class="col-md-5">
			  <input id="grp_State" name="grp_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Zip">ZIP</label>  
			  <div class="col-md-5">
			  <input id="grp_Zip" name="grp_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Group Home</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE ACTIVITY SECTION -->
	<div class="accordion" id="section3">Update Group Home<span></span></div>
		<div class="content">
			<p><form class="form-horizontal">
			<fieldset>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Name">Group Home ID</label>  
			  <div class="col-md-4">
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
			  <div class="col-md-5">
			  <input id="grp_Add1" name="grp_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="grp_Add2" name="grp_Add2" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_City">City</label>  
			  <div class="col-md-5">
			  <input id="grp_City" name="grp_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_State">State</label>  
			  <div class="col-md-5">
			  <input id="grp_State" name="grp_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="grp_Zip">ZIP</label>  
			  <div class="col-md-5">
			  <input id="grp_Zip" name="grp_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="update">Update Group Home</label>
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
			  <label class="col-md-4 control-label" for="grp_ID">Group Home ID</label>  
			  <div class="col-md-5">
			  <input id="grp_ID" name="grp_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="delete">Delete Group Home</label>
			  <div class="col-md-4">
				<button id="delete" name="delete" class="btn btn-danger">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form>
			</p>
		</div>
			
</div>
</body>
</html>