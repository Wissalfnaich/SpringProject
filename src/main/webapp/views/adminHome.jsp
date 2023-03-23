<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<title>Admin Home </title>
</head>
<style>
	.card {
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
}

.card:hover {
  box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
  transform: translateY(-5px);
}

.card-title {
  font-size: 24px;
  font-weight: 600;
  margin-bottom: 15px;
}

.card-text {
  font-size: 16px;
  margin-bottom: 25px;
}

.card-link {
  font-size: 16px;
  font-weight: 600;
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border-radius: 5px;
  transition: all 0.3s ease-in-out;
}

.card-link:hover {
  background-color: #0062cc;
  text-decoration: none;
}

	.navbar {
  background-color: #343a40;
}

.navbar-brand img {
  max-height: 40px;
}

.nav-link {
  color: #fff;
}

.nav-link:hover {
  color: #ffc107;
}

</style>

<body class="bg-dark">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="../static/images/logo.png" width="auto" height="40"
				class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/adminhome">Home
							Page</a></li>
					<li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>

				</ul>

			</div>
		</div>
	</nav>
	<div class="jumbotron text-center">
		<h1 class="display-4">Welcome Home, Admin</h1><hr>
		<p>Manage your data from this Admin Panel</p>
	</div><br>
	<div class="container-fluid">
		<div class="row justify-content-center">
		  <div class="col-sm-4">
			<div class="card mb-3">
			  <div class="card-body">
				<h5 class="card-title">Categories</h5>
				<hr>
				<p class="card-text">Manage the categories section here.</p>
				<a href="/admin/categories" class="btn btn-primary btn-block">Manage Categories</a>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-4">
			<div class="card mb-3">
			  <div class="card-body">
				<h5 class="card-title">Products</h5>
				<hr>
				<p class="card-text">Manage all the products here.</p>
				<a href="/admin/products" class="btn btn-primary btn-block">Manage Products</a>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-4">
			<div class="card mb-3">
			  <div class="card-body">
				<h5 class="card-title">Customers</h5>
				<hr>
				<p class="card-text">Manage all the customers here.</p>
				<a href="/admin/customers" class="btn btn-primary btn-block">Manage Customers</a>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>