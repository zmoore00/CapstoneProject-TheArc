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
     Please Log in Below
    </div>
    <div id="login">
    	<form>
    	   <div class="lable">
    	        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" ></div>
              <div class="col_1_of_2 span_1_of_2"><input type="password" class="text" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
              <div class="clear"> </div>
    	   </div>
    	   <!-- h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3 -->
    	   <div class="submit">
    		  <input type="submit" onclick="myFunction()" value="Create/Update Member" >
    	   </div>
    	   <div class="clear"> </div>
    	</form><br />
    </div>
</body>
</html>