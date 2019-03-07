<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Spring Boot</title>
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/style.css" rel="stylesheet">
</head>
<body>
	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="/welcome">
			<img src="static/fontawesome/svgs/regular/folder-open.svg" width="30" height="30" class="d-inline-block align-top" alt="">
			Mateusz
		</a>
		<ul class="navbar-nav">
		  <li class="nav-item">
		    <a class="nav-link" href="/login">Login</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/register">New Registration</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="/show-users">All Users</a>
		  </li>
		</ul>
	</nav>
	
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to my Spring Boot Project</h1>
			<h3>It is page for logged user</h3>
		</div>
	</div>
	<div class="alert alert-success text-center">
		<h4>You have successfully logged in.</h4>
	</div>
	
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>