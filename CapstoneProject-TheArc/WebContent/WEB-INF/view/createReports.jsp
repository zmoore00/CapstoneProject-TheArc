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
     Member Forms
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
    <div id="welcome">
     Generate Reports
    </div>
	<div id="subtext">
	Click a section below to expand!
	</div>
	<div id="member">
		<!-- BEGIN MAILING LIST SECTION -->
		<div class="accordion" id="section1">Mailing List<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="mailingList">Get Mailing List</label>
			  <div class="col-md-4">
				<button id="mailingList" name="mailingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
		<!-- BEGIN BOWLING LIST SECTION -->
		<div class="accordion" id="section1">Bowling List<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="bowlingList">Get Bowling List</label>
			  <div class="col-md-4">
				<button id="bowlingList" name="bowlingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
			
		<!-- BEGIN SWIMMING LIST SECTION -->
		<div class="accordion" id="section1">Swimming List<span></span></div>
			<div class="content">
				<p><form class="form-horizontal">
			<fieldset>
				
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="swimmingList">Get Swimming List</label>
			  <div class="col-md-4">
				<button id="swimmingList" name="swimmingList" class="btn btn-warning">Submit</button>
			  </div>
			</div>

			</fieldset>
			</form></p>
			</div>
		
</div>
</body>
</html>