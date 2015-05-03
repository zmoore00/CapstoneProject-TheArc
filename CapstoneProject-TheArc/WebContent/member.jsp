<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,javax.swing.JOptionPane,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<%
	//This is the Java section that reads in the Volunteers from the database, this can be used for all others
	ArrayList<Member> members;
	int i;
	
	members=MemberDAO.getMembers();
	
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
	int memGHID = 0;
	String memEmailFlag = null;
	String memBowlFlag = null;
	String memSwimFlag = null;
	int 	status			=0;
	String 	message         ="YOU FAILED";
	String anchor = "member.jsp/#welcome";
	String memFnameUpdate = "John";
	String memLnameUpdate = "Doe";
	String memAdd1Update  = "123 Main Street";
	String memAdd2Update   = "Appt. 2";
	String memCityUpdate   = "Fort Smith";
	String memStateUpdate  = "AR";
	String memCountyUpdate   = "Sebastian";
	String memZipUpdate    = "72903";
	String memHPhoneUpdate  = "(000)000-0000";
	String memCPhoneUpdate  = "(111)111-1111";
	String memWPhoneUpdate  = "(222)222-2222";
	String memRegDateUpdate  = "YYYY/MM/DD";
	String memRenewDateUpdate  = "YYYY/MM/DD";
	String memCurFlagUpdate  = "Y";
	String memDOBFlagUpdate  = "YYYY/MM/DD";
	String memPhotoFlagUpdate  = "Y";
	String memLiabFlagUpdate  = "Y";
	int    memGHIDUpdate = 0;
	String memEmailFlagUpdate  = "Y";
	String memBowlFlagUpdate  = "Y";
	String memSwimFlagUpdate  = "Y";

	if(request.getMethod().equalsIgnoreCase("GET")){
		if(request.getParameter("mem_ID_Update") != null){
			Member memberUpdate;
			try{
			memberUpdate = MemberDAO.getMember(request.getParameter("mem_ID_Update"));
			memFnameUpdate = memberUpdate.getMem_FName();
			memLnameUpdate = memberUpdate.getMem_LName();
			memAdd1Update  = memberUpdate.getMem_Add1();
			memAdd2Update  = memberUpdate.getMem_Add2();
			memCityUpdate  = memberUpdate.getMem_City();
			memStateUpdate = memberUpdate.getMem_State();
			memCountyUpdate   = memberUpdate.getMem_County();
			memZipUpdate   = memberUpdate.getMem_Zip();
			memHPhoneUpdate = memberUpdate.getMem_HPhone();
			memCPhoneUpdate = memberUpdate.getMem_CPhone();
			memWPhoneUpdate = memberUpdate.getMem_WPhone();
			memRegDateUpdate = memberUpdate.getMem_RegDate();
			memRenewDateUpdate = memberUpdate.getMem_RenewDate();
			memCurFlagUpdate = String.valueOf(memberUpdate.getMem_CurFlag());
			memDOBFlagUpdate = String.valueOf(memberUpdate.getMem_DOBFlag());
			memPhotoFlagUpdate = String.valueOf(memberUpdate.getMem_PhotoFlag());
			memLiabFlagUpdate = String.valueOf(memberUpdate.getMem_LiabFlag());
			memGHIDUpdate = memberUpdate.getMem_GHID();
			memEmailFlagUpdate = String.valueOf(memberUpdate.getMem_EmailFlag());
			memBowlFlagUpdate = String.valueOf(memberUpdate.getMem_BowlFlag());
			memSwimFlagUpdate = String.valueOf(memberUpdate.getMem_SwimFlag());
			}catch(Exception e){
				message=" Invalid ID";
				JOptionPane.showMessageDialog(null, message);
			}
			}
	
		
		for(Member member : members){
			memFname = member.getMem_FName();
			memLname = member.getMem_LName();
			memAdd1  = member.getMem_Add1();
			memAdd2  = member.getMem_Add2();
			memCity  = member.getMem_City();
			memState = member.getMem_State();
			memCounty   = member.getMem_County();
			memZip   = member.getMem_Zip();
			memHPhone = member.getMem_HPhone();
			memCPhone = member.getMem_CPhone();
			memWPhone = member.getMem_WPhone();
			memRegDate = member.getMem_RegDate();
			memRenewDate = member.getMem_RenewDate();
			memCurFlag = String.valueOf(member.getMem_CurFlag());
			memDOBFlag = String.valueOf(member.getMem_DOBFlag());
			memPhotoFlag = String.valueOf(member.getMem_PhotoFlag());
			memLiabFlag = String.valueOf(member.getMem_LiabFlag());
			memGHID = member.getMem_GHID();
			memEmailFlag = String.valueOf(member.getMem_EmailFlag());
			memBowlFlag = String.valueOf(member.getMem_BowlFlag());
			memSwimFlag = String.valueOf(member.getMem_SwimFlag());
		}
	}

	//This handles the Delete AND Create for a Volunteer and can be used for all others
	if(request.getMethod().equalsIgnoreCase("POST")){
		//This is what handles the Update
		if(request.getParameter("mem_ID_Update") != null){
			String memberID = request.getParameter("mem_ID_Update");
			System.out.println("update");
			
			memFname = request.getParameter("mem_FName");
			memLname = request.getParameter("mem_LName");
	 		memAdd1  = request.getParameter("mem_Add1");
	 		memAdd2  = request.getParameter("mem_Add2");
	 		memCity  = request.getParameter("mem_City");
	 		memState = request.getParameter("mem_State");
	 		memCounty  = request.getParameter("mem_County");
	 		memZip   = request.getParameter("mem_Zip");
	 		memHPhone = request.getParameter("mem_HPhone");
	 		memCPhone = request.getParameter("mem_CPhone");
	 		memWPhone = request.getParameter("mem_WPhone");
	 		memRegDate = request.getParameter("mem_RegDate");
	 		memRenewDate = request.getParameter("mem_RenewDate");
	 		memCurFlag = request.getParameter("mem_CurFlag");
	 		memDOBFlag = request.getParameter("mem_DOB");
	 		memPhotoFlag = request.getParameter("mem_PhotoFlag");
	 		memLiabFlag = request.getParameter("mem_LiabFLag");
	 		memGHID = Integer.parseInt(request.getParameter("mem_GHID"));
	 		memEmailFlag = request.getParameter("mem_EmailFlag");
	 		memBowlFlag = request.getParameter("mem_BowlFlag");
	 		memSwimFlag = request.getParameter("mem_SwimFlag");

			Member member = new Member();
			member.setMem_ID(memberID);
			member.setMem_FName(memFname);
			member.setMem_LName(memLname);
	 		member.setMem_Add1(memAdd1);
	 		member.setMem_Add2(memAdd2);
	 		member.setMem_City(memCity);
	 		member.setMem_State(memState);
	 		member.setMem_County(memCounty);
	 		member.setMem_Zip(memZip);
	 		member.setMem_HPhone(memHPhone);
	 		member.setMem_CPhone(memCPhone);
	 		member.setMem_WPhone(memWPhone);
	 		member.setMem_RegDate(memRegDate);
	 		member.setMem_RenewDate(memRenewDate);
	 		member.setMem_CurFlag(memCurFlag.charAt(0));
	 		member.setMem_DOBFlag(memDOBFlag);
	 		member.setMem_PhotoFlag(memPhotoFlag.charAt(0));
	 		member.setMem_LiabFlag(request.getParameter("mem_LiabFlag").charAt(0));
	 		member.setMem_GHID(memGHID);
	 		member.setMem_EmailFlag(memEmailFlag.charAt(0));
	 		member.setMem_BowlFlag(memBowlFlag.charAt(0));
	 		member.setMem_SwimFlag(memSwimFlag.charAt(0));
			status = MemberDAO.updateMember(member);
			anchor = "member.jsp#update";
			if(status == 1){
				message = "Successfully updated member.";
				
			}else{
				message = "ERROR 0418: Update unsuccessful.";
			}
			JOptionPane.showMessageDialog(null, message);
			response.sendRedirect(anchor);
			return;
		}
		
		//This is what handles the delete
		if(request.getParameter("mem_ID") != null)
		{
		String memberID = request.getParameter("mem_ID");
		status = MemberDAO.removeMember(memberID);
		response.sendRedirect("member.jsp");
		return;
		}
		
		//This is what handles the Create
		if(request.getParameter("mem_ID") == null)
		{
		System.out.println("create");
		memFname = request.getParameter("mem_FName");
		memLname = request.getParameter("mem_LName");
 		memAdd1  = request.getParameter("mem_Add1");
 		memAdd2  = request.getParameter("mem_Add2");
 		memCity  = request.getParameter("mem_City");
 		memState = request.getParameter("mem_State");
 		memCounty  = request.getParameter("mem_County");
 		memZip   = request.getParameter("mem_Zip");
 		memHPhone = request.getParameter("mem_HPhone");
 		memCPhone = request.getParameter("mem_CPhone");
 		memWPhone = request.getParameter("mem_WPhone");
 		memRegDate = request.getParameter("mem_RegDate");
 		memRenewDate = request.getParameter("mem_RenewDate");
 		memCurFlag = request.getParameter("mem_CurFlag");
 		memDOBFlag = request.getParameter("mem_DOB");
 		memPhotoFlag = request.getParameter("mem_PhotoFlag");
 		memLiabFlag = request.getParameter("mem_LiabFLag");
 		memGHID = Integer.parseInt(request.getParameter("mem_GHID"));
 		memEmailFlag = request.getParameter("mem_EmailFlag");
 		memBowlFlag = request.getParameter("mem_BowlFlag");
 		memSwimFlag = request.getParameter("mem_SwimFlag");

 		Member member = new Member();
		member.setMem_FName(memFname);
		member.setMem_LName(memLname);
 		member.setMem_Add1(memAdd1);
 		member.setMem_Add2(memAdd2);
 		member.setMem_City(memCity);
 		member.setMem_State(memState);
 		member.setMem_County(memCounty);
 		member.setMem_Zip(memZip);
 		member.setMem_HPhone(memHPhone);
 		member.setMem_CPhone(memCPhone);
 		member.setMem_WPhone(memWPhone);
 		member.setMem_RegDate(memRegDate);
 		member.setMem_RenewDate(memRenewDate);
 		member.setMem_CurFlag(memCurFlag.charAt(0));
 		member.setMem_DOBFlag(memDOBFlag);
 		member.setMem_PhotoFlag(memPhotoFlag.charAt(0));
 		member.setMem_LiabFlag(request.getParameter("mem_LiabFlag").charAt(0));
 		member.setMem_GHID(memGHID);
 		member.setMem_EmailFlag(memEmailFlag.charAt(0));
 		member.setMem_BowlFlag(memBowlFlag.charAt(0));
 		member.setMem_SwimFlag(memSwimFlag.charAt(0));
		MemberDAO.addMember(member);
		
		anchor = "member.jsp#create";
		if(status == 1){
			message = "Successfully created member.";
			
		}else{
			message = "ERROR 0400: create unsuccessful.";
		}
		JOptionPane.showMessageDialog(null, message);
		response.sendRedirect(anchor);
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
    
<title>Member Forms</title>
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
     Member Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST MEMBERS SECTION -->
		<div class="accordion" id="section1">List Members<span></span></div>
			<div class="content">
				<!--  This is for a get to list all of the volunteers, this can be used on all of the lists -->
				<table id="listTable">
				<tr>
					<th>ID</th><th>Name</th><th>Address</th><th>ZIP</th><th>Email</th><th>Home Phone</th><th>Cell Phone</th><th>Work Phone</th>
				</tr>
				<% for(int index = 0; index < members.size(); index++){ %>
								<tr>
									<td width="30px"><%=members.get(index).getMem_ID()%>
									<td><%=members.get(index).getMem_LName()%>, <%=members.get(index).getMem_FName()%></td>
									<td><%=members.get(index).getMem_Add1() %></td>
									<td><%=members.get(index).getMem_Zip() %></td>
									<td><%=members.get(index).getMem_GHID() %></td>
									<td><%=members.get(index).getMem_HPhone() %></td>
									<td><%=members.get(index).getMem_CPhone() %></td>
									<td><%=members.get(index).getMem_WPhone() %></td>
								</tr>
				<%} %>
				<!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
			</div>
		
		<!-- BEGIN CREATE MEMBER SECTION -->
		<div class="accordion" id="section2">Create Member<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal" method="POST">
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
			  <label class="col-md-4 control-label" for="mem_Country">County</label>  
			  <div class="col-md-5">
			  <input id="mem_County" name="mem_County" type="text" placeholder="Sebastian" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="mem_RegDate">Registration Date</label>  
			  <div class="col-md-5">
			  <input id="mem_RegDate" name="mem_RegDate" type="text" placeholder="2015/01/30" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_RenewDate">Renew Date</label>  
			  <div class="col-md-5">
			  <input id="mem_RenewDate" name="mem_RenewDate" type="text" placeholder="2016/01/30" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="mem_emailFlag">Newsletter?</label>
			  <div class="col-md-2">
				<select id="mem_EmailFlag" name="mem_EmailFlag" class="form-control">
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
			  <label class="col-md-4 control-label" for="mem_GHID">Group Home ID</label>  
			  <div class="col-md-5">
			  <input id="mem_GHID" name="mem_GHID" type="text" placeholder="" class="form-control input-md">
				
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
		<p><form class="form-horizontal" method="GET">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  	<label class="col-md-4 control-label" for="mem_ID_Update">Member ID</label>  
			  	<div class="col-md-5">
			  		<input id="mem_ID_Update" name="mem_ID_Update" type="text" placeholder="" class="form-control input-md" required="">
				</div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="populate">Populate Fields</label>
			  <div class="col-md-4">
				<button id="populate" name="populate" class="btn btn-primary">Get Info</button>
			  </div>
			</div>
			
			</form>
			<p><form class="form-horizontal" method = "POST">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">First Name</label>  
			  <div class="col-md-4">
			  <input id="mem_FName" name="mem_FName" type="text" value = "<%=memFnameUpdate%>" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_LName">Last Name</label>  
			  <div class="col-md-4">
			  <input id="mem_LName" name="mem_LName" type="text" value = "<%=memLnameUpdate%>" placeholder="Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add1">Address 1</label>  
			  <div class="col-md-5">
			  <input id="mem_Add1" name="mem_Add1" type="text" value = "<%=memAdd1Update%>" placeholder="1 N 1st St" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Add2">Address 2</label>  
			  <div class="col-md-5">
			  <input id="mem_Add2" name="mem_Add2" type="text" value = "<%=memAdd2Update%>" placeholder="appt. 2" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">City</label>  
			  <div class="col-md-4">
			  <input id="mem_City" name="mem_City" type="text" value = "<%=memCityUpdate%>" placeholder="Fort Smith" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_State">State</label>  
			  <div class="col-md-2">
			  <input id="mem_State" name="mem_State" type="text" value = "<%=memStateUpdate%>" placeholder="AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Zip">ZIP</label>  
			  <div class="col-md-2">
			  <input id="mem_Zip" name="mem_Zip" type="text" value = "<%=memZipUpdate%>" placeholder="72901" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_Country">County</label>  
			  <div class="col-md-5">
			  <input id="mem_County" name="mem_County" type="text" value = "<%=memCountyUpdate%>" placeholder="Sebastian" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_HPhone">Home Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_HPhone" name="mem_HPhone" type="text" value = "<%=memHPhoneUpdate%>" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CPhone">Cell Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_CPhone" name="mem_CPhone" type="text" value = "<%=memCPhoneUpdate %>" placeholder="(000) 000-0000" class="form-control input-md">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_WPhone">Work Phone</label>  
			  <div class="col-md-4">
			  <input id="mem_WPhone" name="mem_WPhone" type="text" value = "<%=memWPhoneUpdate%>" placeholder="(000) 000-0000" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_RegDate">Registration Date</label>  
			  <div class="col-md-5">
			  <input id="mem_RegDate" name="mem_RegDate" type="text" value = "<%=memRegDateUpdate%>" placeholder="2015/01/30" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_RenewDate">Renew Date</label>  
			  <div class="col-md-5">
			  <input id="mem_RenewDate" name="mem_RenewDate" type="text" value = "<%=memRenewDateUpdate%>" placeholder="2016/01/30" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Date of Birth</label>  
			  <div class="col-md-4">
			  <input id="mem_DOBFlag" name="mem_DOBFlag" type="date" value = "<%=memDOBFlagUpdate%>" placeholder="2015-01-01" class="form-control input-md" required="">
				
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
			  <label class="col-md-4 control-label" for="mem_emailFlag">Newsletter?</label>
			  <div class="col-md-2">
				<select id="mem_EmailFlag" name="mem_EmailFlag" class="form-control">
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
			  <label class="col-md-4 control-label" for="mem_GHID">Group Home ID</label>  
			  <div class="col-md-5">
			  <input id="mem_GHID" name="mem_GHID" type="text" value = "<%=memGHIDUpdate%>" placeholder="" class="form-control input-md">
				
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
			<%request.setAttribute("Mem_ID_Update", null); %>
			</form></p>
		</div>
		
	<!-- BEGIN DELETE MEMBER SECTION -->
	<div class="accordion" id="section4">Delete Member<span></span></div>
			<div class="content">
			<p>			<form class="form-horizontal" method="POST">
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
