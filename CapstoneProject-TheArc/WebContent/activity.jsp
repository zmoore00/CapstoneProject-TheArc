


PASTEBIN |  #1 paste tool since 2002	create new paste
tools
api
archive
faq
 
PASTEBIN 	 
     


 create new paste      trending pastes 
sign up
login
my alerts
my settings
my profile
	


Want more features on Pastebin? Sign Up, it's FREE!







Public Pastes

marko
Pawn | 13 sec ago

Slutty Reporters
18 sec ago

#one - springdash
28 sec ago

Crash report ore s...
21 sec ago

123125346545654654
41 sec ago

Untitled
28 sec ago

Untitled
37 sec ago

Untitled
38 sec ago


 
 






0


0

Guest	


Untitled 

By: a guest on May 3rd, 2015  |  syntax: None  |  size: 14.96 KB  |  views: 128  |  expires: Never

download  |  raw  |  embed  |  report abuse  |  print

 
 





    



1.<%@ page language="java" contentType="text/html; charset=UTF-8"


2.    pageEncoding="UTF-8" import="java.util.*,beans.*,data.*" %>


3. 


4.<!DOCTYPE html>


5.<html lang="en">


6.<%      


7.        


8.        ArrayList<Activities> activities = ActivityDAO.getActivities();


9.        int     act_ID                  = 0;


10.        String  act_Name                = null; 


11.        String  act_type                = null;


12.        


13.        String  act_date                = null;


14.        String  act_loc                 = null;


15.        int     act_volCount    = 0;


16.        int             act_memCount    = 0;


17.        int             act_nonCount    = 0;


18.        


19.        int             act_totCount    = 0;


20.        int             act_revenue     = 0;


21.        int             act_expense     = 0; 


22.        //list


23.        if(request.getMethod().equalsIgnoreCase("GET")){


24.                if(request.getParameter("act_ID_Update") == null){


25.                for(Activities activity : activities){


26.                                                


27.                        act_Name                = activity.getAct_Name();                     


28.                        act_type                = activity.getAct_type();                     


29.                                                                                       


30.                        act_date                = activity.getAct_date();                     


31.                        act_loc                 = activity.getAct_loc();                      


32.                        act_volCount    =activity.getAct_volCount(); 


33.                        act_memCount    =activity.getAct_memCount(); 


34.                        act_nonCount    =activity.getAct_nonCount(); 


35.                                                                       


36.                        act_totCount    =activity.getAct_totCount(); 


37.                        act_revenue     =activity.getAct_revenue();  


38.                        act_expense     =activity.getAct_expense();  


39.                }


40.                }


41.                //clear values for update


42.                        act_ID                  = 0;


43.                        act_Name                = "Activity Name";      


44.                        act_type                = "Bowling";


45.                


46.                        act_date                = "1/01/01";


47.                        act_loc                 = "Fort Smith, AR";


48.                        act_volCount    = 0;


49.                        act_memCount    = 0;


50.                        act_nonCount    = 0;


51.                


52.                        act_totCount    = 0;


53.                        act_revenue     = 0;


54.                        act_expense     = 0; 


55.                        


56.                }


57.        //set values for update


58.        if(request.getMethod().equalsIgnoreCase("GET")){


59.                if(request.getParameter("act_ID_Update") != null){


60.                        Activities uActivity;


61.                        uActivity = ActivityDAO.getActivity(request.getParameter("act_ID_Update")); 


62.                        act_ID                   =uActivity.getAct_ID();


63.                        act_Name                = uActivity.getAct_Name();


64.                        act_type                = uActivity.getAct_type();


65.                                          


66.                        act_date                = uActivity.getAct_date();


67.                        act_loc                 = uActivity.getAct_loc();


68.                        act_volCount    = uActivity.getAct_volCount();


69.                        act_memCount    = uActivity.getAct_memCount();


70.                        act_nonCount    = uActivity.getAct_nonCount();


71.                                          


72.                        act_totCount    = uActivity.getAct_totCount();


73.                        act_revenue     = uActivity.getAct_revenue();


74.                        act_expense     = uActivity.getAct_expense();


75.                                


76.                }


77.                


78.        }


79.        if(request.getMethod().equalsIgnoreCase("POST")){


80.                //This is what handles the Update


81.                if(request.getParameter("act_ID_Update") != null){


82.                        int actID = Integer.parseInt(request.getParameter("act_ID_Update"));


83.                        System.out.println("update");


84.                        


85.                        act_Name           =    request.getParameter("act_Name");


86.                        act_type           =    request.getParameter("act_Type");


87.                        


88.                        act_date           =    request.getParameter("act_Date");


89.                        act_loc            =    request.getParameter("act_Loc");


90.                        act_volCount   =        Integer.parseInt(request.getParameter("act_VolCount"));


91.                        act_memCount   =        Integer.parseInt(request.getParameter("act_MemCount"));


92.                        act_nonCount   =        Integer.parseInt(request.getParameter("act_NonCount"));


93.                                       


94.                        act_totCount   =        Integer.parseInt(request.getParameter("act_TotCount"));


95.                        act_revenue    =        Integer.parseInt(request.getParameter("act_Revenue"));


96.                        act_expense    =        Integer.parseInt(request.getParameter("act_Expense"));


97.                        


98.                        Activities activity = new Activities();


99.                        activity.setAct_ID                (actID);


100.                        activity.setAct_Name      (act_Name);


101.                        activity.setAct_type      (act_type);   


102.                                      


103.                        activity.setAct_date      (act_date);           


104.                        activity.setAct_loc       (act_loc);    


105.                        activity.setAct_volCount  (act_volCount);


106.                        activity.setAct_memCount  (act_memCount);


107.                        activity.setAct_nonCount  (act_nonCount);


108.            


109.                        activity.setAct_totCount  (act_totCount);


110.                        activity.setAct_revenue   (act_revenue);


111.                        activity.setAct_expense   (act_expense);


112.                        ActivityDAO.updateActivity(activity);


113.                        response.sendRedirect("activity.jsp");


114.                        return;


115.                        


116.                }


117.                


118.                if(request.getParameter("act_ID") == null)


119.                {


120.                System.out.println("create");


121.                


122.                act_Name           =    request.getParameter("act_Name");


123.                act_type           =    request.getParameter("act_Type");


124.                


125.                act_date           =    request.getParameter("act_Date");


126.                act_loc            =    request.getParameter("act_Loc");


127.                


128.                Activities activity = new Activities();


129.                activity.setAct_Name      (act_Name);


130.                activity.setAct_type      (act_type);   


131.                                  


132.                activity.setAct_date      (act_date);           


133.                activity.setAct_loc       (act_loc);    


134.                activity.setAct_volCount  (act_volCount);


135.                activity.setAct_memCount  (act_memCount);


136.                activity.setAct_nonCount  (act_nonCount);


137.        


138.                activity.setAct_totCount  (act_totCount);


139.                activity.setAct_revenue   (act_revenue);


140.                activity.setAct_expense   (act_expense);


141. 


142.                ActivityDAO.addActivity(activity);


143.                response.sendRedirect("activity.jsp");


144.                return;


145.                }


146.        }


147.        


148.        %>


149. 


150.<head>


151.        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


152.        <link href="style.css" rel="stylesheet">


153.        <link href="form.css" rel="stylesheet">


154.        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">


155.        <script type="text/javascript" src="jquery.cookie.js"></script> <!--required only if using cookies-->


156.    <script type="text/javascript" src="jquery.accordion.js"></script>


157.    <script type="text/javascript">


158.        $(document).ready(function() {


159.            $('.accordion').accordion({defaultOpen: 'some_id'}); //some_id section1 in demo


160.        });


161.    </script>


162.    


163.<title>Activity Forms</title>


164.</head>


165. 


166.<body>


167.<!--  Everything from div id = "wrapper" through div id = "welcome-bg" goes on individual pages. This is so that the nav bar isn't shown on the login page. -->


168.<div id="wrapper">


169.        <header>                


170.        <div>


171.        <!-- BEGIN navigation


172.         <li> = visible nav bar item


173.         <div class="sub"> = hidden drop down item -->


174.                        <nav>


175.                                <ul>


176.                                        <li><a href="member.jsp">MEMBERS</a>


177.                                                <div class="sub">


178.                                                </div>


179.                                        </li> 


180.                                        <li><a href="volunteer.jsp">VOLUNTEERS</a>


181.                                                <div class="sub">


182.                                                </div>


183.                                        </li> 


184.                                        <li><a href="activity.jsp">ACTIVITIES</a>


185.                                                <div class="sub">


186.                                                </div>


187.                                        </li> 


188.                                        <li><a href="grouphome.jsp">GROUP HOMES</a>


189.                                        <div class="sub">


190.                                                </div>


191.                                        </li>


192.                                        <li><a href="report.jsp">REPORTS</a>


193.                                                <div class="sub">


194.                                                </div>


195.                                        </li>


196.                                        <li><a href="index">LOG OUT</a></li> 


197.                                </ul>


198.                        </nav>


199.                </div>


200.        </header>


201. 


202. 


203.<section id="welcome-bg">


204.  <div class="container"> 


205.    <div id="welcome">


206.     Activity Forms


207.    </div>


208.        <div id="subtext">


209.        Click a section below to expand!


210.        </div>


211.        <div id="member">


212.                <!-- BEGIN LIST ACTIVITIES SECTION -->


213.                <div class="accordion" id="section1">List Activities<span></span></div>


214.                        <div class="content">


215.                                <p>


216.                                                                <table id="listTable">


217.                                <tr>


218.                                        <th>ID</th><th>Name</th><th>Type</th><th>Date</th><th>Location</th>


219.                                </tr>


220.                                <% for(int index = 0; index < activities.size(); index++){ %>


221.                                                                <tr>


222.                                                                        <td width="30px"><%=activities.get(index).getAct_ID()%>


223.                                                                        <td><%=activities.get(index).getAct_Name()%></td>


224.                                                                        <td><%=activities.get(index).getAct_type() %></td>


225.                                                                        <td><%=activities.get(index).getAct_date() %></td>


226.                                                                        <td><%=activities.get(index).getAct_loc() %></td>                               


227.                                                                </tr>


228.                                <%} %>


229.                                <!-- <th></th><th>Photos</th><th>Art</th><th>Bowling</th><th>Lab</th><th>Dance</th><th>Fishing</th><th>Water</th><th>Office</th><th>Special</th> -->


230.                                </table>


231.                        <fieldset></p>


232.                        </div>


233.                


234.                <!-- BEGIN CREATE ACTIVITIES SECTION -->


235.                <div class="accordion" id="section2">Create Activity<span></span></div>


236.                        <div class="content">


237.                                        <p>                     <form class="form-horizontal" method="POST">


238.                        <fieldset>


239. 


240.                        <!-- Text input-->


241.                        <div class="form-group">


242.                          <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  


243.                          <div class="col-md-4">


244.                          <input id="act_Name" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">


245.                          <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>


246.                          </div>


247.                        </div>


248. 


249.                        <!-- Select Basic -->


250.                        <div class="form-group">


251.                          <label class="col-md-4 control-label" for="mem_CurFlag">Activity Type</label>


252.                          <div class="col-md-2">


253.                                <select id="act_Type" name="act_Type" class="form-control">


254.                                  <option value="Bowling">Bowling</option>


255.                                  <option value="Dance">Dance</option>


256.                                  <option value="Swimming">Swimming</option>


257.                                  <option value="Fishing">Fishing</option>


258.                                  <option value="Special">Special</option>


259.                                  <option value="Misc">Misc</option>


260.                                </select>


261.                          </div>


262.                        </div>


263. 


264.                        <!-- Text input-->


265.                        <div class="form-group">


266.                          <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  


267.                          <div class="col-md-4">


268.                          <input id="act_Date" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">


269.                                


270.                          </div>


271.                        </div>


272. 


273.                        <!-- Text input-->


274.                        <div class="form-group">


275.                          <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  


276.                          <div class="col-md-4">


277.                          <input id="act_Loc" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">


278.                                


279.                          </div>


280.                        </div>


281.                        


282.                        <!-- Button -->


283.                        <div class="form-group">


284.                          <label class="col-md-4 control-label" for="create">Create Activity</label>


285.                          <div class="col-md-4">


286.                                <button id="create" name="create" class="btn btn-primary">Submit</button>


287.                          </div>


288.                        </div>


289. 


290.                        </fieldset>


291.                        </form></p>


292.        </div>


293.                        


294.        <!-- BEGIN UPDATE ACTIVITY SECTION -->


295.        <div class="accordion" id="section3">Update Activity (Add Counts)<span></span></div>


296.                <div class="content">


297.                        <p><form class="form-horizontal" method="GET">


298.                        <fieldset>


299. 


300.                        <!-- Text input-->


301.                        <div class="form-group">


302.                          <label class="col-md-4 control-label" for="act_ID_Update">Activity ID</label>  


303.                          <div class="col-md-4">


304.                          <input id="act_ID_Update" value= <%=act_ID %> name="act_ID_Update" type="text" placeholder="1" class="form-control input-md" required="">


305.                          <p class="help-block">Make sure activity ID is correct!</p>


306.                          </div>


307.                        </div>


308.                        <!-- Button -->


309.                        <div class="form-group">


310.                          <label class="col-md-4 control-label" for="populate">Populate Fields</label>


311.                          <div class="col-md-4">


312.                                <button id="populate" name="populate" class="btn btn-primary" formnovalidate>Get Info</button>


313.                          </div>


314.                        </div>


315.                        </form></p>


316.                        <p><form class="form-horizontal" method="POST">


317.                                                <!-- Text input-->


318.                        <div class="form-group">


319.                          <label class="col-md-4 control-label" for="mem_FName">Activity Name</label>  


320.                          <div class="col-md-4">


321.                          <input id="act_Name" value= "<%=act_Name%>" name="act_Name" type="text" placeholder="Bowling" class="form-control input-md" required="">


322.                          <p class="help-block">Please input a UNIQUE event name so you can update it later.</p>


323.                          </div>


324.                        </div>


325.                        <!-- Select Basic -->


326.                        <div class="form-group">


327.                          <label class="col-md-4 control-label" for="mem_CurFlag">Activity Type</label>


328.                          <div class="col-md-2">


329.                                <select id="act_Type" name="act_Type" class="form-control">


330.                                  <option value= "<%= act_type%>"> <%= act_type%> </option>


331.                                  <option value="Bowling">Bowling</option>


332.                                  <option value="Dance">Dance</option>


333.                                  <option value="Swimming">Swimming</option>


334.                                  <option value="Fishing">Fishing</option>


335.                                  <option value="Special">Special</option>


336.                                  <option value="Misc">Misc</option>


337.                                </select>


338.                          </div>


339.                        </div>


340. 


341.                        <!-- Text input-->


342.                        <div class="form-group">


343.                          <label class="col-md-4 control-label" for="mem_DOBFlag">Activity Date</label>  


344.                          <div class="col-md-4">


345.                          <input id="act_Date"  value= "<%=act_date%>" name="act_Date" type="date" placeholder="2015-01-01" class="form-control input-md" required="">


346.                                


347.                          </div>


348.                        </div>


349. 


350.                        <!-- Text input-->


351.                        <div class="form-group">


352.                          <label class="col-md-4 control-label" for="mem_City">Activity Location</label>  


353.                          <div class="col-md-4">


354.                          <input id="act_Loc"  value= "<%=act_loc%>" name="act_Loc" type="text" placeholder="Fort Smith, AR" class="form-control input-md" required="">


355.                                


356.                          </div>


357.                        </div>


358. 


359.                        <!-- Text input-->


360.                        <div class="form-group">


361.                          <label class="col-md-4 control-label" for="act_VolCount">Volunteer Count</label>  


362.                          <div class="col-md-4">


363.                          <input id="act_VolCount"  value= "<%=act_volCount%>" name="act_VolCount" type="text" placeholder="0" class="form-control input-md" required="">


364. 


365.                          </div>


366.                        </div>


367.                        


368.                        <!-- Text input-->


369.                        <div class="form-group">


370.                          <label class="col-md-4 control-label" for="act_MemCount">Member Count</label>  


371.                          <div class="col-md-4">


372.                          <input id="act_MemCount"  value= "<%=act_memCount%>" name="act_MemCount" type="text" placeholder="0" class="form-control input-md" required="">


373. 


374.                          </div>


375.                        </div>


376.                        


377.                        <!-- Text input-->


378.                        <div class="form-group">


379.                          <label class="col-md-4 control-label" for="act_NonCount">Non Member Count</label>  


380.                          <div class="col-md-4">


381.                          <input id="act_NonCount"  value= "<%=act_nonCount%>" name="act_NonCount" type="text" placeholder="0" class="form-control input-md" required="">


382. 


383.                          </div>


384.                        </div>


385.                        


386.                        <!-- Text input-->


387.                        <div class="form-group">


388.                          <label class="col-md-4 control-label" for="act_TotCount">Total Count</label>  


389.                          <div class="col-md-4">


390.                          <input id="act_TotCount"  value= "<%=act_totCount%>" name="act_TotCount" type="text" placeholder="0" class="form-control input-md" required="">


391. 


392.                          </div>


393.                        </div>


394.                        


395.                        <!-- Text input-->


396.                        <div class="form-group">


397.                          <label class="col-md-4 control-label" for="act_Revenue">Revenue</label>  


398.                          <div class="col-md-4">


399.                          <input id="act_Revenue"  value= "<%=act_revenue%>" name="act_Revenue" type="text" placeholder="$0.00" class="form-control input-md" required="">


400. 


401.                          </div>


402.                        </div>


403.                        


404.                        <!-- Text input-->


405.                        <div class="form-group">


406.                          <label class="col-md-4 control-label" for="act_Revenue">Expenses</label>  


407.                          <div class="col-md-4">


408.                          <input id="act_Expense"  value= "<%=act_expense%>" name="act_Expense" type="text" placeholder="$0.00" class="form-control input-md" required="">


409. 


410.                          </div>


411.                        </div>


412. 


413.                        <!-- Button -->


414.                        <div class="form-group">


415.                          <label class="col-md-4 control-label" for="update">Update Activity</label>


416.                          <div class="col-md-4">


417.                                <button id="update" name="update" class="btn btn-primary">Submit</button>


418.                          </div>


419.                        </div>


420. 


421.                        </fieldset>


422.                        </form></p>


423.                </div>


424.  </div>


425.</section>


426.</div>


427.<section id="copy">


428.  <div class="">


429.    <div id="copyright">


430.    &copy; 2015 The Arc for the River Valley


431.    </div>


432.  </div>


433.</section>


434. 


435.</div>


436.</body>


437. 


438.</html>


clone this paste RAW Paste Data 


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
				<button id="populate" name="populate" class="btn btn-primary" formnovalidate>Get Info</button>
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
 
 





Pastebin.com Tools & Applications

iPhone/iPad Windows Firefox Chrome WebOS Android Mac Opera Click.to UNIX WinPhone 



create new paste  |  api  |  trends  |  syntax languages  |  faq  |  tools  |  privacy  |  cookies  |  contact  |  dmca  |  advertise on pastebin  |  go pro 
Follow us: pastebin on facebook  |  pastebin on twitter  |  pastebin in the news 
Dedicated Server Hosting by Steadfast
Pastebin v3.11 rendered in: 0.004 seconds 

 
  
 
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
				<button id="create" name="create" class="btn btn-primary">Submit</button>
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
				<button id="populate" name="populate" class="btn btn-primary" formnovalidate>Get Info</button>
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
