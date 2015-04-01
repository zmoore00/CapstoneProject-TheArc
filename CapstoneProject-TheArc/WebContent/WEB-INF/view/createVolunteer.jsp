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
     Create Activity
    </div>
    <div id="member">
    	<form>
    	   <div class="lable">
    	        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="Activity Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'act_Name';}" ></div>
				<div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="Activity Type" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'act_Type';}" ></div>
              <div class="clear"> </div>
    	   </div>
    	   
    	   <div class="lable">
				<div class="col_1_of_2 span_1_of_2"> <input type="text" class="text" value="Activity Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'act_date';}"></div>
				<div class="col_1_of_2 span_1_of_2"> <input type="text" class="text" value="Activity Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'act_loc';}"></div>
		   </div>
				    	   
    	   
    	   <!-- h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3 -->
    	   <div class="submit">
    		  <input type="submit" onclick="myFunction()" value="Create Activity" >
    	   </div>
    	   <div class="clear"> </div>
    	</form>
    </div>
</body>
</html>