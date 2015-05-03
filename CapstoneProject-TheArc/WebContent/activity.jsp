  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,javax.swing.JOptionPane,beans.*,data.*" %>

<!DOCTYPE html>
<html lang="en">
<%	
	
	ArrayList<Activities> activities = ActivityDAO.getActivities();
	int 	act_ID   		= 0;
	String 	act_Name   		= null;	
	String 	act_type   		= null;
	
	String 	act_date   		= null;
	String 	act_loc   		= null;
	int 	act_volCount   	= 0;
	int		act_memCount   	= 0;
	int		act_nonCount   	= 0;
	
	int		act_totCount   	= 0;
	int		act_revenue   	= 0;
	int		act_expense   	= 0; 
	int 	status			=0;
	String 	message         ="YOU FAILED";
	String anchor = "activity.jsp/#welcome";
	//list
	if(request.getMethod().equalsIgnoreCase("GET")){
		if(request.getParameter("act_ID_Update") == null){
		for(Activities activity : activities){
						
			act_Name   		= activity.getAct_Name();                     
			act_type   		= activity.getAct_type();                     
			                                                               
			act_date   		= activity.getAct_date();                     
			act_loc   		= activity.getAct_loc();                      
			act_volCount   	=activity.getAct_volCount(); 
			act_memCount   	=activity.getAct_memCount(); 
			act_nonCount   	=activity.getAct_nonCount(); 
			                                               
			act_totCount   	=activity.getAct_totCount(); 
			act_revenue   	=activity.getAct_revenue();  
			act_expense   	=activity.getAct_expense();  
		}
		}
		//clear values for update
			act_ID   		= 0;
		 	act_Name   		= "Activity Name";	
		 	act_type   		= "Bowling";
		
		 	act_date   		= "1/01/01";
		 	act_loc   		= "Fort Smith, AR";
		 	act_volCount   	= 0;
			act_memCount   	= 0;
			act_nonCount   	= 0;
		
			act_totCount   	= 0;
			act_revenue   	= 0;
			act_expense   	= 0; 
			
		}
	//set values for update
	if(request.getMethod().equalsIgnoreCase("GET")){
		if(request.getParameter("act_ID_Update") != null){
			Activities uActivity;
			try{
			uActivity = ActivityDAO.getActivity(request.getParameter("act_ID_Update")); 
			
			act_ID			 =uActivity.getAct_ID();
			act_Name   		= uActivity.getAct_Name();
			act_type   		= uActivity.getAct_type();
			                  
			act_date   		= uActivity.getAct_date();
			act_loc   		= uActivity.getAct_loc();
			act_volCount   	= uActivity.getAct_volCount();
			act_memCount   	= uActivity.getAct_memCount();
			act_nonCount   	= uActivity.getAct_nonCount();
			                  
			act_totCount   	= uActivity.getAct_totCount();
			act_revenue   	= uActivity.getAct_revenue();
			act_expense   	= uActivity.getAct_expense();
			
			}catch(Exception e){
				message = "Invalid ID";
				JOptionPane.showMessageDialog(null, message);
			}
			anchor = "activity.jsp#update";	
		}
		
	}
	if(request.getMethod().equalsIgnoreCase("POST")){
		//This is what handles the Update
		if(request.getParameter("act_ID_Update") != null){
			int actID = Integer.parseInt(request.getParameter("act_ID_Update"));
			System.out.println("update");
			
			act_Name   	   =	request.getParameter("act_Name");
			act_type   	   =	request.getParameter("act_Type");
			
			act_date   	   =	request.getParameter("act_Date");
			act_loc   	   =	request.getParameter("act_Loc");
			act_volCount   = 	Integer.parseInt(request.getParameter("act_VolCount"));
			act_memCount   = 	Integer.parseInt(request.getParameter("act_MemCount"));
			act_nonCount   = 	Integer.parseInt(request.getParameter("act_NonCount"));
			               
			act_totCount   = 	Integer.parseInt(request.getParameter("act_TotCount"));
			act_revenue    =	Integer.parseInt(request.getParameter("act_Revenue"));
			act_expense    =	Integer.parseInt(request.getParameter("act_Expense"));
			
			Activities activity = new Activities();
			activity.setAct_ID		  (actID);
			activity.setAct_Name   	  (act_Name);
			activity.setAct_type   	  (act_type); 	
                                      
			activity.setAct_date   	  (act_date);   	
			activity.setAct_loc   	  (act_loc);	
			activity.setAct_volCount  (act_volCount);
			activity.setAct_memCount  (act_memCount);
			activity.setAct_nonCount  (act_nonCount);
            
			activity.setAct_totCount  (act_totCount);
			activity.setAct_revenue   (act_revenue);
			activity.setAct_expense   (act_expense);
			status=ActivityDAO.updateActivity(activity);
			anchor = "activity.jsp#update";
			if(status == 1){
				message = "Successfully updated Activity.";
				
			}else{
				message = "ERROR 0418: Update unsuccessful.";
			}
			JOptionPane.showMessageDialog(null, message);
			System.out.println(anchor);
			response.sendRedirect(anchor);
			return;
		}
		
		if(request.getParameter("act_ID") == null)
		{
		System.out.println("create");
		
		act_Name   	   =	request.getParameter("act_Name");
		act_type   	   =	request.getParameter("act_Type");
		
		act_date   	   =	request.getParameter("act_Date");
		act_loc   	   =	request.getParameter("act_Loc");
		
		Activities activity = new Activities();
		activity.setAct_Name   	  (act_Name);
		activity.setAct_type   	  (act_type); 	
                                  
		activity.setAct_date   	  (act_date);   	
		activity.setAct_loc   	  (act_loc);	
		activity.setAct_volCount  (act_volCount);
		activity.setAct_memCount  (act_memCount);
		activity.setAct_nonCount  (act_nonCount);
        
		activity.setAct_totCount  (act_totCount);
		activity.setAct_revenue   (act_revenue);
		activity.setAct_expense   (act_expense);

		status = ActivityDAO.addActivity(activity);
		if(status == 1){
			message = "Successfully added Activity.";
			
		}else{
			message = "ERROR 0417: Create unsuccessful.";
		}
		JOptionPane.showMessageDialog(null, message);
		anchor = "activity.jsp#create";
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
    
<title>Activity Forms</title>
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
					<li><a href="index.jsp">HOME</a></li> 
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
     Activity Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN LIST ACTIVITIES SECTION -->
		<div class="accordion" id="section1">List Activities<span></span></div>
			<div class="content">
				<p>
								<table id="listTable">
				<tr>
					<th>ID</th><th>Name</th><th>Type</th><th>Date</th><th>Location</th>
				</tr>
				<% for(int index = 0; index < activities.size(); index++){ %>
								<tr>
									<td width="30px"><%=activities.get(index).getAct_ID()%>
									<td><%=activities.get(index).getAct_Name()%></td>
									<td><%=activities.get(index).getAct_type() %></td>
									<td><%=activities.get(index).getAct_date() %></td>
									<td><%=activities.get(index).getAct_loc() %></td>				
								</tr>
				<%} %>
				<!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->
				</table>
				<div id="WEEEEEW"></div>
			<fieldset></p>
			</div>
		
		<!-- BEGIN CREATE ACTIVITIES SECTION -->
		<div class="accordion" id="section2">Create Activity<span></span></div>
			<div class="content">
					<p>			<form class="form-horizontal" method="POST">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  
			  <div class="col-md-4">
			  <input id="act_Name" value= "<%=act_Name%>" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>
			  </div>
			</div>
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Activity Type</label>
			  <div class="col-md-2">
				<select id="act_Type" name="act_Type" class="form-control">
				  <option value= "<%= act_type%>"> <%= act_type%> </option>
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
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  
			  <div class="col-md-4">
			  <input id="act_Date"  value= "<%=act_date%>" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  
			  <div class="col-md-4">
			  <input id="act_Loc"  value= "<%=act_loc%>" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Activity</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-success">Submit</button>
			  </div>
			</div>
			
			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE ACTIVITY SECTION -->
	<div class="accordion" id="section3">Update Activity (Add Counts)<span></span></div>
		<div class="content">
			<p><form class="form-horizontal" method="GET">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_ID_Update">Activity ID</label>  
			  <div class="col-md-4">
			  <input id="act_ID_Update" value= <%=act_ID %> name="act_ID_Update" type="text" placeholder="1" class="form-control input-md" required="">
			  <p class="help-block">Make sure activity ID is correct!</p>
			  </div>
			</div>
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="populate">Populate Fields</label>
			  <div class="col-md-4">
				<button id="populate" name="populate" class="btn btn-primary" >Get Info</button>
			  </div>
			</div>
			</form></p>
			<p><form class="form-horizontal" method="POST">
						<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  
			  <div class="col-md-4">
			  <input id="act_Name" value= "<%=act_Name%>" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>
			  </div>
			</div>
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_CurFlag">Activity Type</label>
			  <div class="col-md-2">
				<select id="act_Type" name="act_Type" class="form-control">
				  <option value= "<%= act_type%>"> <%= act_type%> </option>
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
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  
			  <div class="col-md-4">
			  <input id="act_Date"  value= "<%=act_date%>" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  
			  <div class="col-md-4">
			  <input id="act_Loc"  value= "<%=act_loc%>" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_VolCount">Volunteer Count</label>  
			  <div class="col-md-4">
			  <input id="act_VolCount"  value= "<%=act_volCount%>" name="act_VolCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_MemCount">Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_MemCount"  value= "<%=act_memCount%>" name="act_MemCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_NonCount">Non Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_NonCount"  value= "<%=act_nonCount%>" name="act_NonCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_TotCount">Total Count</label>  
			  <div class="col-md-4">
			  <input id="act_TotCount"  value= "<%=act_totCount%>" name="act_TotCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Revenue</label>  
			  <div class="col-md-4">
			  <input id="act_Revenue"  value= "<%=act_revenue%>" name="act_Revenue" type="text" placeholder="$0.00" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Expenses</label>  
			  <div class="col-md-4">
			  <input id="act_Expense"  value= "<%=act_expense%>" name="act_Expense" type="text" placeholder="$0.00" class="form-control input-md" required="">

			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="update">Update Activity</label>
			  <div class="col-md-4">
				<button id="update" name="update" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
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
