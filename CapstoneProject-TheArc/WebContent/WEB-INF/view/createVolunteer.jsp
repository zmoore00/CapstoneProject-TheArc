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
     Volunteer Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST MEMBERS SECTION -->
		<div class="accordion" id="section1">List Volunteers<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Get Member List</label>
			  <div class="col-md-4">
				<button id="getVolunteers" name="getVolunteers" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN CREATE MEMBER SECTION -->
		<div class="accordion" id="section2">Create Volunteer<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="vol_FName" name="vol_FName" type="text" placeholder="John" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LName">Last Name</label>  
			  <div class="col-md-4">
			  <input id="vol_LName" name="vol_LName" type="text" placeholder="Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Add1">Address 1</label>  
			  <div class="col-md-5">
			  <input id="vol_Add1" name="vol_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="vol_Add2" name="vol_Add2" type="text" placeholder="" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_City">City</label>  
			  <div class="col-md-4">
			  <input id="vol_City" name="vol_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_State">State</label>  
			  <div class="col-md-2">
			  <input id="vol_State" name="vol_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Zip">ZIP</label>  
			  <div class="col-md-2">
			  <input id="vol_Zip" name="vol_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_HPhone">Home Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_HPhone" name="vol_HPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_CPhone">Cell Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_CPhone" name="vol_CPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_WPhone">Work Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_WPhone" name="vol_WPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_State">Employer</label>  
			  <div class="col-md-2">
			  <input id="vol_Emp" name="vol_Emp" type="text" placeholder="Employer" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LiabFlag">Liability Flag</label>
			  <div class="col-md-2">
				<select id="vol_LiabFlag" name="vol_LiabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_PhotoFlag">Photo Release Flag</label>
			  <div class="col-md-2">
				<select id="vol_PhotoFlag" name="vol_PhotoFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Volunteer</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-success">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE MEMBER SECTION -->
	<div class="accordion" id="section3">Update Volunteer<span></span></div>
		<div class="content">
			<p><form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_ID">Volunteer ID</label>  
			  <div class="col-md-5">
			  <input id="vol_ID" name="vol_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="vol_FName" name="vol_FName" type="text" placeholder="John" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LName">Last Name</label>  
			  <div class="col-md-4">
			  <input id="vol_LName" name="vol_LName" type="text" placeholder="Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Add1">Address 1</label>  
			  <div class="col-md-5">
			  <input id="vol_Add1" name="vol_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="vol_Add2" name="vol_Add2" type="text" placeholder="" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_City">City</label>  
			  <div class="col-md-4">
			  <input id="vol_City" name="vol_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_State">State</label>  
			  <div class="col-md-2">
			  <input id="vol_State" name="vol_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Zip">ZIP</label>  
			  <div class="col-md-2">
			  <input id="vol_Zip" name="vol_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_HPhone">Home Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_HPhone" name="vol_HPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_CPhone">Cell Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_CPhone" name="vol_CPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_WPhone">Work Phone</label>  
			  <div class="col-md-4">
			  <input id="vol_WPhone" name="vol_WPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_Email">Employer</label>  
			  <div class="col-md-5">
			  <input id="vol_Emp" name="vol_Emp" type="text" placeholder="" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LiabFlag">Liability Flag</label>
			  <div class="col-md-2">
				<select id="vol_LiabFlag" name="vol_LiabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_PhotoFlag">Photo Release Flag</label>
			  <div class="col-md-2">
				<select id="vol_PhotoFlag" name="vol_PhotoFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Update Volunteer</label>
			  <div class="col-md-4">
				<button id="update" name="update" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
		</div>
		
	<!-- BEGIN DELETE MEMBER SECTION -->
	<div class="accordion" id="section4">Delete Volunteer<span></span></div>
			<div class="content">
			<p>			<form class="form-horizontal">
			<fieldset>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_ID">Member ID</label>  
			  <div class="col-md-5">
			  <input id="vol_ID" name="vol_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Delete Member</label>
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