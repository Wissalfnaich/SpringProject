<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Contact Us</title>
        <!-- External CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <!-- External JavaScript -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
        <style>
            /* Styles for header */
            header {
                text-align: center;
                width: 100%;
                height: auto;
                background-size: cover;
                background-attachment: fixed;
                position: relative;
                overflow: hidden;
                border-radius: 0 0 85% 85% / 30%;
            }
    
            header .overlay {
                width: 100%;
                height: 100%;
                padding: 50px;
                color: #99ff93;
                background-image: linear-gradient(135deg, #77ffbd69 10%, #2253e6dc 100%);
            }
    
            /* Styles for form */
          /* Form styles */
form {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  border: 2px solid #fdf8f8;
  border-radius: 5px;
  font-family: Arial, sans-serif;
}

.form-header {
  text-align: center;
  margin-bottom: 30px;
}

.form-header h2 {
  font-size: 36px;
  font-weight: bold;
  text-transform: uppercase;
  color: #007bff;
  letter-spacing: 2px;
  margin-bottom: 30px;
  text-align: center;
  text-shadow: 2px 2px #eee;
}


.form-body {
  gap: 20px;
  background-color: #f8f8f8;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 20px;
}

label {
  font-size: 18px;
  font-weight: bold;
  color: #333;
}

input[type="text"],
input[type="email"],
textarea {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: #f1f1f1;
  color: #333;
  font-size: 16px;
}

select {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: #f1f1f1;
  color: #333;
  font-size: 16px;
}

button[type="submit"] {
  background-color: #7c79df;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  transition: background-color 0.2s ease-in-out;
}

button[type="submit"]:hover {
  background-color: 7c79df;
}

.form-group {
  margin-bottom: 20px;
}

.form-group label {
  display: block;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

.form-group input,
.form-group select,
.form-group textarea {
  width: 100%;
  padding: 10px;
  border: 2px solid #ddd;
  border-radius: 5px;
  font-size: 16px;
}

.form-group select {
  appearance: none;
  padding-right: 30px;
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 10 5'%3E%3Cpath fill='%23333' d='M5 5L0 0h10z'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 10px center;
  background-size: 8px;
}

.form-group textarea {
  height: 120px;
}

.form-footer {
  text-align: center;
  margin-top: 30px;
}

.form-footer button {
  background-color

        </style>
    </head>

<body>
  <nav class="navbar navbar-expand-md navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarContent">
      <ul class="navbar-nav mr-auto"></ul>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Shop</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Cart<span class="badge badge-pill badge-primary ml-1">0</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Profile</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Account
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">Settings</a>
            <a class="dropdown-item" href="#">Orders</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Sign Out</a>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>

<header>
	<div class="overlay">
<style>

* {
  box-sizing: border-box;
  font-family: 'Roboto', sans-serif;
}

body {
  background-color: #F1F1F1;
}

form {
  background-color: #fff;
  width: 400px;
  margin: 50px auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

.form-header {
  text-align: center;
  margin-bottom: 20px;
}

.form-header h2 {
  font-size: 28px;
  color: #333;
}

.form-body {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

.form-group {
  display: flex;
  flex-direction: column;
  margin-bottom: 10px;
}

label {
  font-size: 14px;
  font-weight: 600;
  color: #666;
  margin-bottom: 5px;
}

input,
select,
textarea {
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: #F1F1F1;
  font-size: 16px;
  color: #333;
}

select option {
  font-size: 16px;
}

textarea {
  resize: none;
  height: 100px;
}
header {
	text-align: center;
	width: 100%;
	height: auto;
	background-size: cover;
	background-attachment: fixed;
	position: relative;
	overflow: hidden;
	border-radius: 0 0 85% 85% / 30%;
}
</style>
<form action="https://formcarry.com/s/Pq3xf4Lbabh" method="POST">
  <div class="form-header">
    <h2>Product Inquiry Form</h2>
  </div>
  <div class="form-body">
    <div class="form-group">
      <label for="product-name">Product Name:</label>
      <input type="text" id="product-name" name="product-name" placeholder="Enter product name" required>
    </div>
    <div class="form-group">
      <label for="contact-number">Contact Number:</label>
      <input type="tel" id="contact-number" name="contact-number" placeholder="Enter contact number" pattern="[0-9]{10}" required>
    </div>
    <div class="form-group">
      <label for="email">Email Address:</label>
      <input type="email" id="email" name="email" placeholder="Enter email address" required>
    </div>
    <div class="form-group">
      <label for="category">Product Category:</label>
      <select id="category" name="category" required>
        <option value="" selected disabled>-- Select a category --</option>
        <option value="Electronics">Electronics</option>
        <option value="Clothing">Clothing</option>
        <option value="Home & Garden">Home & Garden</option>
        <option value="Beauty & Personal Care">Beauty & Personal Care</option>
      </select>
    </div>
    <div class="form-group">
      <label for="description">Product Description:</label>
      <textarea id="description" name="description" placeholder="Enter product description" required></textarea>
    </div>
  </div>
  <div class="form-footer">
    <button type="submit" style="background-color: #007bff; color: #fff; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">Submit Inquiry</button>
  </div>
</form>


  

</header>
</div>


</body>
</html>