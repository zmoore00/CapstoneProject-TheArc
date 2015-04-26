<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<%
	ArrayList<Volunteer> volunteers;
	int i;
	
	volunteers=VolunteerDAO.getVolunteers();
	
if(request.getMethod().equalsIgnoreCase("GET")){
		for(Volunteer volunteer : volunteers){
			String volFname = volunteer.getVol_FName();
			String volLname = volunteer.getVol_LName();
			String volAdd1  = volunteer.getVol_Add1();
			String volCity  = volunteer.getVol_City();
			String volState = volunteer.getVol_State();
			String volZip   = volunteer.getVol_Zip();
			String volHPhone = volunteer.getVol_HPhone();
			String volCPhone = volunteer.getVol_CPhone();
			String volWPhone = volunteer.getVol_WPhone();
			String volLabFlag = String.valueOf(volunteer.getVol_LabFlag());
			String volPhotoFlag = String.valueOf(volunteer.getVol_PhotoFlag());
			String volHours = String.valueOf(volunteer.getVol_Hours());
			String volArtFlag = String.valueOf(volunteer.getVol_ArtFlag());
			String volBowlFlag = String.valueOf(volunteer.getVol_BowlFlag());
			String volLiab = String.valueOf(volunteer.getVol_Liab());
			String volDanceFlag = String.valueOf(volunteer.getVol_DanceFlag());
			String volFishFlag = String.valueOf(volunteer.getVol_FishFlag());
			String volWaterFlag = String.valueOf(volunteer.getVol_WaterFlag());
			String volOfficeFlag = String.valueOf(volunteer.getVol_OfficeFlag());
			String volSpecFlag = String.valueOf(volunteer.getVol_SpecFlag());
			String volEmail = volunteer.getVol_Email();
		}
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
    
<title>Volunteer Forms</title>
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
			<table>
				<tr>
					<td id="fnameHead" value="<%=volFname%>"><td>
				<tr>
			</table>
			  <label class="col-md-4 control-label" for="create">Get Volunteer List</label>
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
			  <label class="col-md-4 control-label" for="vol_Add1">Address</label>  
			  <div class="col-md-5">
			  <input id="vol_Add1" name="vol_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="vol_Email">Email</label>  
			  <div class="col-md-2">
			  <input id="vol_Email" name="vol_Email" type="text" placeholder="" class="form-control input-md" required="">
				
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
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_ArtFlag">Art Flag</label>
			  <div class="col-md-2">
				<select id="vol_ArtFlag" name="vol_ArtFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_BowlFlag">Bowling Flag</label>
			  <div class="col-md-2">
				<select id="vol_BowlFlag" name="vol_BowlFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LabFlag">Computer Lab Flag</label>
			  <div class="col-md-2">
				<select id="vol_LabFlag" name="vol_LabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_DanceFlag">Dance Flag</label>
			  <div class="col-md-2">
				<select id="vol_DanceFlag" name="vol_DanceFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_FishFlag">Fishing Flag</label>
			  <div class="col-md-2">
				<select id="vol_FishFlag" name="vol_FishFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_WaterFlag">Water Park Flag</label>
			  <div class="col-md-2">
				<select id="vol_WaterFlag" name="vol_WaterFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_OfficeFlag">Office Work Flag</label>
			  <div class="col-md-2">
				<select id="vol_OfficeFlag" name="vol_OfficeFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_SpecFlag">Special Events Flag</label>
			  <div class="col-md-2">
				<select id="vol_SpecFlag" name="vol_SpecFlag" class="form-control">
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
			  <label class="col-md-4 control-label" for="vol_Add1">Address</label>  
			  <div class="col-md-5">
			  <input id="vol_Add1" name="vol_Add1" type="text" placeholder="1 N 1st St" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="vol_Email">Email</label>  
			  <div class="col-md-2">
			  <input id="vol_Email" name="vol_Email" type="text" placeholder="" class="form-control input-md" required="">
				
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
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_ArtFlag">Art Flag</label>
			  <div class="col-md-2">
				<select id="vol_ArtFlag" name="vol_ArtFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_BowlFlag">Bowling Flag</label>
			  <div class="col-md-2">
				<select id="vol_BowlFlag" name="vol_BowlFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_LabFlag">Computer Lab Flag</label>
			  <div class="col-md-2">
				<select id="vol_LabFlag" name="vol_LabFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_DanceFlag">Dance Flag</label>
			  <div class="col-md-2">
				<select id="vol_DanceFlag" name="vol_DanceFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_FishFlag">Fishing Flag</label>
			  <div class="col-md-2">
				<select id="vol_FishFlag" name="vol_FishFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_WaterFlag">Water Park Flag</label>
			  <div class="col-md-2">
				<select id="vol_WaterFlag" name="vol_WaterFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_OfficeFlag">Office Work Flag</label>
			  <div class="col-md-2">
				<select id="vol_OfficeFlag" name="vol_OfficeFlag" class="form-control">
				  <option value="Y">Y</option>
				  <option value="N">N</option>
				</select>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_SpecFlag">Special Events Flag</label>
			  <div class="col-md-2">
				<select id="vol_SpecFlag" name="vol_SpecFlag" class="form-control">
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
			  <label class="col-md-4 control-label" for="vol_ID">Volunteer ID</label>  
			  <div class="col-md-5">
			  <input id="vol_ID" name="vol_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Delete Volunteer</label>
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
