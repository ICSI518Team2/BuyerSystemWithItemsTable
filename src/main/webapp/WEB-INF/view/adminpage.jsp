<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>SELL IT DOWN</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">SELL IT DOWN</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					
					<li><a href="/show-users">All Users</a></li>
					<li><a href="/all-items">All items</a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>SELL IT DOWN</h1>
					<h3>Welcome to Admin Page</h3>
				</div>
			</div>

		</c:when>

		<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>ID</th>
								<th>name</th>
								<th>emailID</th>
								<th>phone_number</th>
								
								<th>Delete</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.ID}</td>
									<td>${user.name}</td>
									<td>${user.emailID}</td>
									<td>${user.phone_number}</td>
									
									<td><a href="/delete-user?id=${user.ID }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
		
		<c:when test="${mode=='All_items' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All items</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>ID</th>
								<th>itemID</th>
								<th>itemname</th>
								
								<th>itemdesc</th>
								
								<th>Delete</th>
						
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${items }">
								<tr>
									<td>${item.ID}</td>
									<td>${item.itemID}</td>
									<td>${item.itemname}</td>
									<td>${item.itemdesc}</td>
									
									<td><a href="/delete-item?ID=${item.ID }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		



		
		
		

		
		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">emailID</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.emailID }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>