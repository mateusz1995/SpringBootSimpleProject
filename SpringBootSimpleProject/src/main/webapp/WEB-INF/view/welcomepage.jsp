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
	
	<c:choose>
	<c:when test="${mode=='MODE_HOME'}">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to my Spring Boot Project</h1>
			<h3>It is simple project to understand Spring Boot</h3>
		</div>
	</div>
	</c:when>
	
	<c:when test="${mode=='MODE_REGISTER'}">
	<div class="container text-center">
		<h3>New Registration:</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-user">
			<input type="hidden" name="id" value="${user.id}" />
			<div class="form-group">
				<label class="control-label col-md-3">Username:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="username"
						value="${user.username}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">First Name:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="firstname"
						value="${user.firstname}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Last Name:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="lastname"
						value="${user.lastname}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Age:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="age"
						value="${user.age}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Password:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="password" class="form-control" name="password"
						value="${user.password}" />
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
		</form>
	</div>
	</c:when>
	<c:when test="${mode=='MODE_ALL_USERS'}">
		<div class="container text-center" id="tasksDiv">
			<h3>ALL USERS:</h3>
			<hr>
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>ID:</th>
							<th>USERNAME:</th>
							<th>FIRST NAME:</th>
							<th>LAST NAME:</th>
							<th>AGE:</th>
							<th>DELETE:</th>
							<th>EDIT:</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.id}</td>
								<td>${user.username}</td>
								<td>${user.firstname}</td>
								<td>${user.lastname}</td>
								<td>${user.age}</td>
								<td><a href="/delete-user?id=${user.id}">
									<img src="static/fontawesome/svgs/regular/trash-alt.svg" width="30" height="30" class="d-inline-block align-top" alt=""></a></td>
								<td><a href="/edit-user?id=${user.id }">
									<img src="static/fontawesome/svgs/regular/edit.svg" width="30" height="30" class="d-inline-block align-top" alt=""></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:when>
	<c:when test="${mode=='MODE_UPDATE'}">
		<div class="container text-center">
		<h3>UPDATE USER:</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-user">
			<input type="hidden" name="id" value="${user.id}" />
			<div class="form-group">
				<label class="control-label col-md-3">Username:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="username"
						value="${user.username}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">First Name:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="firstname"
						value="${user.firstname}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Last Name:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="lastname"
						value="${user.lastname}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Age:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="age"
						value="${user.age}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Password:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="password" class="form-control" name="password"
						value="${user.password}" />
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Update" />
			</div>
		</form>
	</div>
	</c:when>
	<c:when test="${mode=='MODE_LOGIN'}">
		<div class="container text-center">
		<h3>LOGIN:</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="login-user">
			<c:if test="${not empty error}">
				<div class="alert alert-danger">
					<c:out value="${error}"></c:out>
				</div>
			</c:if>
			<div class="form-group">
				<label class="control-label col-md-3">USERNAME:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="text" class="form-control" name="username"
						value="${user.username}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">PASSWORD:</label>
				<div class="col-xs-6 col-xs-offset-3">
					<input type="password" class="form-control" name="password"
						value="${user.password}" />
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Login" />
			</div>
		</form>
	</div>
	</c:when>
	</c:choose>
	
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>