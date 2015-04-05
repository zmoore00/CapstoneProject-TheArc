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
     Member Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST MEMBERS SECTION -->
		<div class="accordion" id="section1">List Members<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Get Member List</label>
			  <div class="col-md-4">
				<button id="getMembers" name="getMembers" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN CREATE MEMBER SECTION -->
		<div class="accordion" id="section2">Create Member<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="mem_FName" name="mem_FName" type="text" placeholder="John" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_LName">Last Name</label>  
			  <div class="col-md-4">
			  <input id="mem_LName" name="mem_LName" type="text" placeholder="Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add1">Address 1</label>  
			  <div class="col-md-5">
			  <input id="mem_Add1" name="mem_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="mem_Add2" name="mem_Add2" type="text" placeholder="" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">City</label>  
			  <div class="col-md-4">
			  <input id="mem_City" name="mem_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_State">State</label>  
			  <div class="col-md-2">
			  <input id="mem_State" name="mem_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Zip">ZIP</label>  
			  <div class="col-md-2">
			  <input id="mem_Zip" name="mem_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_HPhone">Home Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_HPhone" name="mem_HPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CPhone">Cell Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_CPhone" name="mem_CPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_WPhone">Work Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_WPhone" name="mem_WPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Email">Email</label>  
			  <div class="col-md-5">
			  <input id="mem_Email" name="mem_Email" type="text" placeholder="" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Current Member?</label>
			  <div class="col-md-2">
				<select id="mem_CurFlag" name="mem_CurFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Date of Birth</label>  
			  <div class="col-md-4">
			  <input id="mem_DOBFlag" name="mem_DOBFlag" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_LiabFlag">Liability Flag</label>
			  <div class="col-md-2">
				<select id="mem_LiabFlag" name="mem_LiabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_PhotoFlag">Photo Release Flag</label>
			  <div class="col-md-2">
				<select id="mem_PhotoFlag" name="mem_PhotoFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_PhysFlag">Newsletter?</label>
			  <div class="col-md-2">
				<select id="mem_PhysFlag" name="mem_PhysFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_BowlFlag">Add to Bowling List?</label>
			  <div class="col-md-2">
				<select id="mem_BowlFlag" name="mem_BowlFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_SwimFlag">Add to Swimming List?</label>
			  <div class="col-md-2">
				<select id="mem_SwimFlag" name="mem_SwimFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Country">Country</label>  
			  <div class="col-md-5">
			  <input id="mem_Country" name="mem_Country" type="text" placeholder="USA" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Member</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-success">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE MEMBER SECTION -->
	<div class="accordion" id="section3">Update Member<span></span></div>
		<div class="content">
			<p><form class="form-horizontal">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_ID">Member ID</label>  
			  <div class="col-md-5">
			  <input id="mem_ID" name="mem_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="mem_FName" name="mem_FName" type="text" placeholder="John" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_LName">Last Name</label>  
			  <div class="col-md-4">
			  <input id="mem_LName" name="mem_LName" type="text" placeholder="Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add1">Address 1</label>  
			  <div class="col-md-5">
			  <input id="mem_Add1" name="mem_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="mem_Add2" name="mem_Add2" type="text" placeholder="" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">City</label>  
			  <div class="col-md-4">
			  <input id="mem_City" name="mem_City" type="text" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_State">State</label>  
			  <div class="col-md-2">
			  <input id="mem_State" name="mem_State" type="text" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Zip">ZIP</label>  
			  <div class="col-md-2">
			  <input id="mem_Zip" name="mem_Zip" type="text" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_HPhone">Home Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_HPhone" name="mem_HPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CPhone">Cell Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_CPhone" name="mem_CPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_WPhone">Work Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_WPhone" name="mem_WPhone" type="text" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Email">Email</label>  
			  <div class="col-md-5">
			  <input id="mem_Email" name="mem_Email" type="text" placeholder="" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_RenewDate">Renewal Date</label>  
			  <div class="col-md-4">
			  <input id="mem_RenewDate" name="mem_RenewDate" type="date" placeholder="2015-01-01" class="form-control input-md">
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Current Member?</label>
			  <div class="col-md-2">
				<select id="mem_CurFlag" name="mem_CurFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Date of Birth</label>  
			  <div class="col-md-4">
			  <input id="mem_DOBFlag" name="mem_DOBFlag" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_LiabFlag">Liability Flag</label>
			  <div class="col-md-2">
				<select id="mem_LiabFlag" name="mem_LiabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_PhotoFlag">Photo Release Flag</label>
			  <div class="col-md-2">
				<select id="mem_PhotoFlag" name="mem_PhotoFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_PhysFlag">Newsletter?</label>
			  <div class="col-md-2">
				<select id="mem_PhysFlag" name="mem_PhysFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_BowlFlag">Add to Bowling List?</label>
			  <div class="col-md-2">
				<select id="mem_BowlFlag" name="mem_BowlFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_SwimFlag">Add to Swimming List?</label>
			  <div class="col-md-2">
				<select id="mem_SwimFlag" name="mem_SwimFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Country">Country</label>  
			  <div class="col-md-5">
			  <input id="mem_Country" name="mem_Country" type="text" placeholder="USA" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Update Member</label>
			  <div class="col-md-4">
				<button id="update" name="update" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
		</div>
		
	<!-- BEGIN DELETE MEMBER SECTION -->
	<div class="accordion" id="section4">Delete Member<span></span></div>
			<div class="content">
			<p>			<form class="form-horizontal">
			<fieldset>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_ID">Member ID</label>  
			  <div class="col-md-5">
			  <input id="mem_ID" name="mem_ID" type="text" placeholder="" class="form-control input-md" required="">
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