<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,javax.swing.JOptionPane,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<%
	//This is the Java section that reads in the Volunteers from the database, this can be used for all others
	ArrayList<Member> members;
	ArrayList<Member> dobMembers = new ArrayList<Member>();
	int i;
	
	members=MemberDAO.getEXPMembers();
	
	String memFname = null;
	String memLname = null;
	String memAdd1  = null;
	String memAdd2  = null;
	String memCity  = null;
	String memState = null;
	String memCounty  = null;
	String memZip   = null;
	String memHPhone = null;
	String memCPhone = null;
	String memWPhone = null;
	String memRegDate = null;
	String memRenewDate = null;
	String memCurFlag = null;
	String memDOBFlag = null;
	String memPhotoFlag = null;
	String memLiabFlag = null;
	int memGHID;
	String memEmailFlag = null;
	String memBowlFlag = null;
	String memSwimFlag = null;
	
	String vol_ID = "";
	String vol_FName = "";
	String vol_LName = "";
	String vol_Hours = "";

	
	String anchor = "activity.jsp/#welcome";
	
	
	if(request.getMethod().equalsIgnoreCase("GET")){
		//JORDAN AND JEREMY, THERE WILL HAVE TO BE SOME KIND OF IF STATEMENT HERE THAT WILL
		//TELL WHICH GET IS BEING PERFROMED. I DID NOT KNOW HOW YOU WANTED TO SET THAT UP
		//SO I DID NOT IMPLEMENT.  I WOULD ASSUME IT WOULD BE SOMETHING LIKE VOL_ID != NULL AND MONTH_SELECT != SELECT MONTH
		//JUST DEPENDS ON HOW YOU NAME YOUR VARIABLES.
		for(Member member : members){
			memFname = member.getMem_FName();
			memLname = member.getMem_LName();
			memAdd1  = member.getMem_Add1();
			memAdd2  = member.getMem_Add2();
			memCity  = member.getMem_City();
			memState = member.getMem_State();
			memZip   = member.getMem_Zip();
			memHPhone = member.getMem_HPhone();
			memCPhone = member.getMem_CPhone();
			memWPhone = member.getMem_WPhone();
			memRegDate = member.getMem_RegDate();
			memRenewDate = member.getMem_RenewDate();
			memCurFlag = String.valueOf(member.getMem_CurFlag());
			
		}
		//Volunteer Hours Java Code
		if(request.getParameter("vol_ID") != null){
			//System.out.println("Get Vol Hours");

			Volunteer volunteer;
			try{
				volunteer = VolunteerDAO.getVolunteer(request.getParameter("vol_ID"));
				vol_ID = volunteer.getVol_ID();
				vol_FName = volunteer.getVol_FName();
				vol_LName = volunteer.getVol_LName();
				vol_Hours = String.valueOf(volunteer.getVol_Hours());
				}
			catch(Exception e){
				String message = "Unable to find that ID";
				JOptionPane.showMessageDialog(null, message);
				anchor = "report.jsp#VolList";
				response.sendRedirect(anchor);
			}
		}
		//only execute birthday report if mailingList has a value
		if(request.getParameter("mailingList") != null){
			//get selected month
			String month= request.getParameter("mailingList");
			//set up data structure for report
			ArrayList<Member> tempDobMems = MemberDAO.getMembers();
			//variables needed to test date
			String dobDate ="";
			String dobMonth ="";
			//iterate through members, find members with birthdays this month and assign them to new data structure
			for(Member dobIteratemember : tempDobMems){
				dobMonth="";
				dobDate="";
				dobDate=dobIteratemember.getMem_DOBFlag(); //get date
				
				
				if(dobDate !=null){
					dobMonth = dobDate.substring(0,2); //get testable value
				}
				if("2".equals(month)){ //test monnths, if true assign member to member report list, else continue
					Member dobReport = new Member();
					dobReport.setMem_ID(dobIteratemember.getMem_ID());
					dobReport.setMem_FName(dobIteratemember.getMem_FName());
					dobReport.setMem_LName(dobIteratemember.getMem_LName());
					dobReport.setMem_DOBFlag(dobIteratemember.getMem_DOBFlag());
					dobReport.setMem_Email(dobIteratemember.getMem_Email());
					dobReport.setMem_HPhone(dobIteratemember.getMem_HPhone());
					dobMembers.add(dobReport);
				}

			}
			
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
					<li><a href="index.jsp">HOME</a>
						<div class="sub">
						</div>
					</li> 
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
				  <option value="0">Select Month</option>
				  <option value="1">January</option>
				  <option value="2">February</option>
				  <option value="3">March</option>
				  <option value="4">April</option>
				  <option value="5">May</option>
				  <option value="6">June</option>
				  <option value="7">July</option>
				  <option value="8">August</option>
				  <option value="9">September</option>
				  <option value="10">October</option>
				  <option value="11">November</option>
				  <option value="12">December</option>
				</select>
			  </div>
			  <div class="col-md-4">
			  	<button id="mem_DOBFlag" name="mem_DOBFlag" value = "" class="btn btn-warning">Submit</button>
			  </div>
			</div>
				
			</fieldset>
			</form>
			<table id="listTable">
				<tr>
					<th>ID</th><th>Name</th><th>Date of Birth</th><th>Email</th><th>Home Phone</th>
				</tr>
				<% for(int dobI = 0; dobI < dobMembers.size(); dobI++){;%>
				
								<tr>
									<td width="30px"><%=dobMembers.get(dobI).getMem_ID()%>
									<td><%=dobMembers.get(dobI).getMem_LName()%>, <%=dobMembers.get(dobI).getMem_FName()%></td>
									<td><%=dobMembers.get(dobI).getMem_DOBFlag() %></td>
									<td><%=dobMembers.get(dobI).getMem_Email() %></td>
									<td><%=dobMembers.get(dobI).getMem_HPhone() %></td>
								</tr>
				<%} %>
				<!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
			</div>
		
		<!-- BEGIN BOWLING LIST SECTION -->
		<div class="accordion" id="section2">EXPIRED MEMBERS<span></span></div>
			<div class="content">
				<p><form class="form-horizontal" method="GET">
			<fieldset>
			</fieldset>
			</form>	
			<!-- Button -->
			<div class="form-group">
			  <table id="listTable">
				<tr>
					<th>ID</th><th>Name</th><th>Address</th><th>ZIP</th><th>Current Member</th><th>Home Phone</th><th>Cell Phone</th><th>Work Phone</th>
				</tr>
				<% for(int index = 0; index < members.size(); index++){ %>
								<tr>
									<td width="30px"><%=members.get(index).getMem_ID()%>
									<td><%=members.get(index).getMem_LName()%>, <%=members.get(index).getMem_FName()%></td>
									<td><%=members.get(index).getMem_Add1() %></td>
									<td><%=members.get(index).getMem_Zip() %></td>
									<td><%=members.get(index).getMem_CurFlag() %></td>
									<td><%=members.get(index).getMem_HPhone() %></td>
									<td><%=members.get(index).getMem_CPhone() %></td>
									<td><%=members.get(index).getMem_WPhone() %></td>
								</tr>
				<%} %>
				<!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
			  </div>
			</div>

			
			
			
		<!-- BEGIN VOLUNTEER HOURS LIST SECTION -->
		<div class="accordion" id="section3">VOLUNTEER HOURS<span></span></div>
			<div class="content">
			<p><form class="form-horizontal">
			<fieldset>
				
			 <label class="col-md-4 control-label" for="ID">Enter ID</label>
			  <div class="col-md-2">
				<input id="vol_ID" name="vol_ID" type="text" placeholder="" class="form-control input-md" required="">
			  </div>
			  <div class="col-md-4"><button id="VolList" name="VolList" class="btn btn-warning">Submit</button>
			  </div>
			  
			</fieldset>
			<br>
			</form>
			
				<table id="listTable">
				<tr>
					<th>ID</th><th>First Name</th><th>Last Name</th><th>Hours</th>
				</tr>
								<tr>
									<td><%=vol_ID %></td>
									<td><%=vol_FName %></td>
									<td><%=vol_LName %></td>
									<td><%=vol_Hours %></td>
								</tr>
				<!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
			</div>
		</div>
			
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
