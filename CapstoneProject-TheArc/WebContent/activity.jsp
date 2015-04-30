<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>

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
	//list
	if(request.getMethod().equalsIgnoreCase("GET")){
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
	
	if(request.getMethod().equalsIgnoreCase("POST")){
		//This is what handles the Update
		if(request.getParameter("act_ID_Update") != null){
			String volunteerID = request.getParameter("act_ID_Update");
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
			//act_ID = act_ID_Update 
			activity.setAct_ID		  (act_ID);
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
			System.out.println(act_ID);
			ActivityDAO.updateActivity(activity);
			response.sendRedirect("activity.jsp");
			return;
			
		}
		
		if(request.getParameter("act_ID") == null)
		{
		System.out.println("create");
		
		act_Name   	   =	request.getParameter("act_Name");
		act_type   	   =	request.getParameter("act_Type");
		
		act_date   	   =	request.getParameter("act_Date");
		act_loc   	   =	request.getParameter("act_Loc");
		//act_volCount   = 	Integer.parseInt(request.getParameter("act_volCount"));
		//act_memCount   = 	Integer.parseInt(request.getParameter("act_memCount"));
		//act_nonCount   = 	Integer.parseInt(request.getParameter("act_nonCount"));
		               
		//act_totCount   = 	Integer.parseInt(request.getParameter("act_totCount"));
	    //act_revenue    =	Integer.parseInt(request.getParameter("act_revenue"));
		//act_expense    =	Integer.parseInt(request.getParameter("act_expense"));
		
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
		
		ActivityDAO.addActivity(activity);
		response.sendRedirect("activity.jsp");
		return;
		}
	}
	
	if(request.getMethod().equalsIgnoreCase("PUT")){
		System.out.println("Never gunna give you up!");
		response.sendRedirect("activity.jsp");
		return;
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
			  <input id="act_Name" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>
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
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  
			  <div class="col-md-4">
			  <input id="act_Date" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  
			  <div class="col-md-4">
			  <input id="act_Loc" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">
				
			  </div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="create">Create Activity</label>
			  <div class="col-md-4">
				<button id="create" name="create" class="btn btn-primary">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
	</div>
			
	<!-- BEGIN UPDATE ACTIVITY SECTION -->
	<div class="accordion" id="section3">Update Activity (Add Counts)<span></span></div>
		<div class="content">
			<p><form class="form-horizontal" method="POST">
			<fieldset>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_ID_Update">Activity ID</label>  
			  <div class="col-md-4">
			  <input id="act_ID_Update" name="act_ID_Update" type="text" placeholder="1" class="form-control input-md" required="">
			  <p class="help-block">Make sure activity ID is correct!</p>
			  </div>
			</div>
			
						<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  
			  <div class="col-md-4">
			  <input id="act_Name" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">
			  <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>
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
			  <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  
			  <div class="col-md-4">
			  <input id="act_Date" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  
			  <div class="col-md-4">
			  <input id="act_Loc" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">
				
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_VolCount">Volunteer Count</label>  
			  <div class="col-md-4">
			  <input id="act_VolCount" name="act_VolCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_MemCount">Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_MemCount" name="act_MemCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_NonCount">Non Member Count</label>  
			  <div class="col-md-4">
			  <input id="act_NonCount" name="act_NonCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_TotCount">Total Count</label>  
			  <div class="col-md-4">
			  <input id="act_TotCount" name="act_TotCount" type="text" placeholder="0" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Revenue</label>  
			  <div class="col-md-4">
			  <input id="act_Revenue" name="act_Revenue" type="text" placeholder="$0.00" class="form-control input-md" required="">

			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="act_Revenue">Expenses</label>  
			  <div class="col-md-4">
			  <input id="act_Expense" name="act_Expense" type="text" placeholder="$0.00" class="form-control input-md" required="">

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
