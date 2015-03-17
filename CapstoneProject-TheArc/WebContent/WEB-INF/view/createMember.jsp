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
     Create/Update Member
    </div>
    <div id="member">
    	<form>
    	   <div class="lable">
    	        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'FirstName';}" ></div>
              <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'LastName';}"></div>
              <div class="clear"> </div>
    	   </div>
    	   
    	   <div class="lable-2">
    	   <input type="text" class="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'AddressLine1';}"></div>
    	   
    	   <div class="lable">
    	      <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="City" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" ></div>
    	      <div class="col_1_of_4 span_1_of_4"><input type="text" class="text" value="State" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State';}"></div>
    	      <div class="col_1_of_4 span_1_of_4">	<input type="text" class="text" value="Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Zip';}" ></div>
    	      <div class="clear"> </div>
    	   </div>
    	   
    	   <div class="lable">
    	        <div class="col_1_of_3 span_1_of_3">	<input type="text" class="text" value="Home Phone (000) 000-0000" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'HomePhone';}" ></div>
    	      <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" value="Cell Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'CellPhone';}"></div>
    	      <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" value="Work Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'WorkPhone';}"></div>
    	      <div class="clear"> </div>
    	   </div>
    	   
    	   <div class="lable">
    	        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="Emergency Contact" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'EmergencyContact';}" ></div>
    	      <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" value="Emergency Contact Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'EmergencyContactPhone';}"></div>
    	      <div class="clear"> </div>
    	   </div>
    	   
    	   <div class="lable-2">
    	        <input type="text" class="text" value="your@email.com " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}">
          </div>
    	   
    	   <div class="lable">
    	        <div class="col_1_of_3 span_1_of_3">	<input type="text" class="text" name="RegistrationDate" value="Registration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'RegstrationDate';}" ></div>
    	      <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" name="LastRenewelDate" value="Last Renewal Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'LastRenewalDate';}"></div>
    	      <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" name="MemberFlag" value="Member Flag" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'CurrentMemberFlag';}"></div>
    	      <div class="clear"> </div>
    	   </div>
				
				 <div class="lable">
				      <div class="col_1_of_3 span_1_of_3">	<input type="text" class="text" name="DOB" value="Date of Birth" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DateOfBirth';}" ></div>
				    <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" name="LiabilityFlag" value="Liability Flag" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'LiabilityFlag';}"></div>
				    <div class="col_1_of_3 span_1_of_3"><input type="text" class="text" name="PhotoReleaseFlag" value="Photo Release Flag" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PhotoReleaseFlag';}"></div>
				    <div class="clear"> </div>
				 </div>
				    	   
    	   
    	   <!-- h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3 -->
    	   <div class="submit">
    		  <input type="submit" onclick="myFunction()" value="Create/Update Member" >
    	   </div>
    	   <div class="clear"> </div>
    	</form>
    </div>
</body>
</html>