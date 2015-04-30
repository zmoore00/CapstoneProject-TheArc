<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<%
	//This is the Java section that reads in the Volunteers from the database, this can be used for all others
	ArrayList<Volunteer> volunteers;
	int i;
	
	volunteers=VolunteerDAO.getVolunteers();
	String volFname = null;
	String volLname = null;
	String volAdd1  = null;
	String volCity  = null;
	String volState = null;
	String volZip   = null;
	String volHPhone = null;
	String volCPhone = null;
	String volWPhone = null;
	String volLabFlag = null;
	String volPhotoFlag = null;
	String volHours = null;
	String volArtFlag = null;
	String volBowlFlag = null;
	String volLiab = null;
	String volDanceFlag = null;
	String volFishFlag = null;
	String volWaterFlag = null;
	String volOfficeFlag = null;
	String volSpecFlag = null;
	String volEmail = null;
	String test = "test";
	
	String volFnameUpdate = null;
	
	if(request.getMethod().equalsIgnoreCase("GET")){
		System.out.println("We're Updating!");
		if(request.getParameter("vol_ID_Update") != null){
			Volunteer volunteer;
			volunteer = VolunteerDAO.getVolunteer("2");
			
			volFnameUpdate = volunteer.getVol_FName();
			volLname = volunteer.getVol_LName();
			volAdd1  = volunteer.getVol_Add1();
			volCity  = volunteer.getVol_City();
			volState = volunteer.getVol_State();
			volZip   = volunteer.getVol_Zip();
			volHPhone = volunteer.getVol_HPhone();
			volCPhone = volunteer.getVol_CPhone();
			volWPhone = volunteer.getVol_WPhone();
			volLabFlag = String.valueOf(volunteer.getVol_LabFlag());
			volPhotoFlag = String.valueOf(volunteer.getVol_PhotoFlag());
			volHours = String.valueOf(volunteer.getVol_Hours());
			volArtFlag = String.valueOf(volunteer.getVol_ArtFlag());
			volBowlFlag = String.valueOf(volunteer.getVol_BowlFlag());
			volLiab = String.valueOf(volunteer.getVol_Liab());
			volDanceFlag = String.valueOf(volunteer.getVol_DanceFlag());
			volFishFlag = String.valueOf(volunteer.getVol_FishFlag());
			volWaterFlag = String.valueOf(volunteer.getVol_WaterFlag());
			volOfficeFlag = String.valueOf(volunteer.getVol_OfficeFlag());
			volSpecFlag = String.valueOf(volunteer.getVol_SpecFlag());
			volEmail = volunteer.getVol_Email();
		}
		for(Volunteer volunteer : volunteers){
			volFname = volunteer.getVol_FName();
			volLname = volunteer.getVol_LName();
			volAdd1  = volunteer.getVol_Add1();
			volCity  = volunteer.getVol_City();
			volState = volunteer.getVol_State();
			volZip   = volunteer.getVol_Zip();
			volHPhone = volunteer.getVol_HPhone();
			volCPhone = volunteer.getVol_CPhone();
			volWPhone = volunteer.getVol_WPhone();
			volLabFlag = String.valueOf(volunteer.getVol_LabFlag());
			volPhotoFlag = String.valueOf(volunteer.getVol_PhotoFlag());
			volHours = String.valueOf(volunteer.getVol_Hours());
			volArtFlag = String.valueOf(volunteer.getVol_ArtFlag());
			volBowlFlag = String.valueOf(volunteer.getVol_BowlFlag());
			volLiab = String.valueOf(volunteer.getVol_Liab());
			volDanceFlag = String.valueOf(volunteer.getVol_DanceFlag());
			volFishFlag = String.valueOf(volunteer.getVol_FishFlag());
			volWaterFlag = String.valueOf(volunteer.getVol_WaterFlag());
			volOfficeFlag = String.valueOf(volunteer.getVol_OfficeFlag());
			volSpecFlag = String.valueOf(volunteer.getVol_SpecFlag());
			volEmail = volunteer.getVol_Email();
			//System.out.println(volFname);
			
		}
		
		
	}
	//This handles the Delete AND Create for a Volunteer and can be used for all others
	if(request.getMethod().equalsIgnoreCase("POST")){
		//This is what handles the Update
		if(request.getParameter("vol_ID_Update") != null){
			String volunteerID = request.getParameter("vol_ID_Update");
			System.out.println("update");
			
			volFname = request.getParameter("vol_FName");
			volLname = request.getParameter("vol_LName");
	 		volAdd1  = request.getParameter("vol_Add1");
	 		volCity  = request.getParameter("vol_City");
	 		volState = request.getParameter("vol_State");
	 		volZip   = request.getParameter("vol_Zip");
	 		volHPhone = request.getParameter("vol_HPhone");
	 		volCPhone = request.getParameter("vol_CPhone");
	 		volWPhone = request.getParameter("vol_WPhone");
	 		volLabFlag = request.getParameter("vol_LabFlag");
	 		volPhotoFlag = request.getParameter("vol_PhotoFlag");
	 		volHours = request.getParameter("vol_Hours");
	 		volArtFlag = request.getParameter("vol_ArtFlag");
	 		volBowlFlag = request.getParameter("vol_BowlFlag");
	 		volLiab = request.getParameter("vol_LiabFLag");
	 		volDanceFlag = request.getParameter("vol_DanceFlag");
	 		volFishFlag = request.getParameter("vol_FishFlag");
	 		volWaterFlag = request.getParameter("vol_WaterFlag");
	 		volOfficeFlag = request.getParameter("vol_OfficeFlag");
	 		volSpecFlag = request.getParameter("vol_SpecFlag");
	 		volEmail = request.getParameter("vol_Email");
			
			Volunteer volunteer = new Volunteer();
			volunteer.setVol_ID(volunteerID);
			volunteer.setVol_FName(volFname);
			volunteer.setVol_LName(volLname);
	 		volunteer.setVol_Add1(volAdd1);
	 		volunteer.setVol_City(volCity);
	 		volunteer.setVol_State(volState);
	 		volunteer.setVol_Zip(volZip);
	 		volunteer.setVol_HPhone(volHPhone);
	 		volunteer.setVol_CPhone(volCPhone);
	 		volunteer.setVol_WPhone(volWPhone);
	 		volunteer.setVol_LabFlag(volLabFlag.charAt(0));
	 		volunteer.setVol_PhotoFlag(volPhotoFlag.charAt(0));
	 		volunteer.setVol_Hours(0);
	 		volunteer.setVol_ArtFlag(volArtFlag.charAt(0));
	 		volunteer.setVol_BowlFlag(volBowlFlag.charAt(0));
	 		volunteer.setVol_Liab(volLabFlag.charAt(0));
	 		volunteer.setVol_DanceFlag(volDanceFlag.charAt(0));
	 		volunteer.setVol_FishFlag(volFishFlag.charAt(0));
	 		volunteer.setVol_WaterFlag(volWaterFlag.charAt(0));
	 		volunteer.setVol_OfficeFlag(volOfficeFlag.charAt(0));
	 		volunteer.setVol_SpecFlag(volSpecFlag.charAt(0));
	 		volunteer.setVol_Email(volEmail);
	 		
			VolunteerDAO.updateVolunteer(volunteer);
			response.sendRedirect("volunteer.jsp");
			return;
		}
		
		//This is what handles the delete
		if(request.getParameter("vol_ID") != null)
		{
		String volunteerID = request.getParameter("vol_ID");
		System.out.println("delete");
		int status = VolunteerDAO.removeVolunteer(volunteerID);
		response.sendRedirect("volunteer.jsp");
		return;
		}
		
		//This is what handles the Create
		if(request.getParameter("vol_ID") == null)
		{
		System.out.println("create");
		volFname = request.getParameter("vol_FName");
		volLname = request.getParameter("vol_LName");
 		volAdd1  = request.getParameter("vol_Add1");
 		volCity  = request.getParameter("vol_City");
 		volState = request.getParameter("vol_State");
 		volZip   = request.getParameter("vol_Zip");
 		volHPhone = request.getParameter("vol_HPhone");
 		volCPhone = request.getParameter("vol_CPhone");
 		volWPhone = request.getParameter("vol_WPhone");
 		volLabFlag = request.getParameter("vol_LabFlag");
 		volPhotoFlag = request.getParameter("vol_PhotoFlag");
 		volHours = request.getParameter("vol_Hours");
 		volArtFlag = request.getParameter("vol_ArtFlag");
 		volBowlFlag = request.getParameter("vol_BowlFlag");
 		volLiab = request.getParameter("vol_LiabFLag");
 		volDanceFlag = request.getParameter("vol_DanceFlag");
 		volFishFlag = request.getParameter("vol_FishFlag");
 		volWaterFlag = request.getParameter("vol_WaterFlag");
 		volOfficeFlag = request.getParameter("vol_OfficeFlag");
 		volSpecFlag = request.getParameter("vol_SpecFlag");
 		volEmail = request.getParameter("vol_Email");
		
		Volunteer volunteer = new Volunteer();
		volunteer.setVol_FName(volFname);
		volunteer.setVol_LName(volLname);
 		volunteer.setVol_Add1(volAdd1);
 		volunteer.setVol_City(volCity);
 		volunteer.setVol_State(volState);
 		volunteer.setVol_Zip(volZip);
 		volunteer.setVol_HPhone(volHPhone);
 		volunteer.setVol_CPhone(volCPhone);
 		volunteer.setVol_WPhone(volWPhone);
 		volunteer.setVol_LabFlag(volLabFlag.charAt(0));
 		volunteer.setVol_PhotoFlag(volPhotoFlag.charAt(0));
 		volunteer.setVol_Hours(0);
 		volunteer.setVol_ArtFlag(volArtFlag.charAt(0));
 		volunteer.setVol_BowlFlag(volBowlFlag.charAt(0));
 		volunteer.setVol_Liab(volLabFlag.charAt(0));
 		volunteer.setVol_DanceFlag(volDanceFlag.charAt(0));
 		volunteer.setVol_FishFlag(volFishFlag.charAt(0));
 		volunteer.setVol_WaterFlag(volWaterFlag.charAt(0));
 		volunteer.setVol_OfficeFlag(volOfficeFlag.charAt(0));
 		volunteer.setVol_SpecFlag(volSpecFlag.charAt(0));
 		volunteer.setVol_Email(volEmail);
		
		VolunteerDAO.addVolunteer(volunteer);
		response.sendRedirect("volunteer.jsp");
		return;
		}
		
		
	}
	
%>


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
		<!-- BEGIN LIST VOLUNTEERS SECTION -->
		<div class="accordion" id="section1">List Volunteers<span></span></div>
			<div class="content">
				<!--  This is for a get to list all of the volunteers, this can be used on all of the lists -->
				<table id="listTable">
				<tr>
					<th>ID</th><th>Name</th><th>Address</th><th>ZIP</th><th>Email</th><th>Home Phone</th><th>Cell Phone</th><th>Work Phone</th>
				</tr>
				<% for(int index = 0; index < volunteers.size(); index++){ %>
								<tr>
									<td width="30px"><%=volunteers.get(index).getVol_ID()%>
									<td><%=volunteers.get(index).getVol_LName()%>, <%=volunteers.get(index).getVol_FName()%></td>
									<td><%=volunteers.get(index).getVol_Add1() %></td>
									<td><%=volunteers.get(index).getVol_Zip() %></td>
									<td><%=volunteers.get(index).getVol_Email() %></td>
									<td><%=volunteers.get(index).getVol_HPhone() %></td>
									<td><%=volunteers.get(index).getVol_CPhone() %></td>
									<td><%=volunteers.get(index).getVol_WPhone() %></td>
								</tr>
				<%} %>
				<!-- <th>Liab</th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
			</div>
		
		<!-- BEGIN CREATE VOLUNTEER SECTION -->
		<div class="accordion" id="section2">Create Volunteer<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal" method="POST">
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
			
	<!-- BEGIN UPDATE VOLUNTEER SECTION -->
	<div class="accordion" id="section3">Update Volunteer<span></span></div>
		<div class="content">
			<p><form class="form-horizontal" method="GET">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  	<label class="col-md-4 control-label" for="vol_ID_Update">Volunteer ID</label>  
			  	<div class="col-md-5">
			  		<input id="vol_ID_Update" name="vol_ID_Update" type="text" placeholder="" class="form-control input-md" required="">
				</div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="populate">Populate Fields</label>
			  <div class="col-md-4">
				<button id="populate" name="populate" class="btn btn-primary">Get Info	</button>
			  </div>
			</div>
			
			</form>
			<form class="form-horizontal" method="POST">

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="vol_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="vol_FName" value= <%=volFnameUpdate%> name="vol_FName" type="text" placeholder="John" class="form-control input-md" required="">
				
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
		
	<!-- BEGIN DELETE VOLUNTEER SECTION -->
	<!-- You have to put method="POST" on the form to make it work -->
	<div class="accordion" id="section4">Delete Volunteer<span></span></div>
			<div class="content">
			<p>			<form class="form-horizontal" method="POST">
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
