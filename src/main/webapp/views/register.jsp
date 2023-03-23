<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
              crossorigin="anonymous">
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
              crossorigin="anonymous">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="style.css">
    </head>
<style>
    body {
    background-color: #f8f9fa;
}

.form-group label {
    color: #007bff;
    font-weight: bold;
}

.form-control {
    border-color: #007bff;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
}

.btn-primary:hover {
    background-color: #0062cc;
    border-color: #0062cc;
}

.linkControl {
    color: #007bff;
}

.linkControl:hover {
    color: #0056b3;
}

.form-group small {
    color: #6c757d;
}

.form-group input:focus {
    border-color: #007bff;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

</style>    

<body>

<div class="container">

    <h1>User Registration Form</h1>

    <form action="newuserregister" method="post">

        <div class="form-group">
            <label for="firstName">User Name</label>
            <input type="text" name="username" id="firstName" required placeholder="Your Username*"
                   class="form-control form-control-lg">
        </div>

        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*"
                   name="email" id="email" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control form-control-lg" required placeholder="Password*" name="password"
                   id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                   title="Must contain: at least one number, one uppercase letter, one lowercase letter, one special character, and 8 or more characters">
            <div class="password-toggle">
                <input type="checkbox" onclick="showPassword()">
                <label for="show-password">Show Password</label>
            </div>
        </div>

        <div class="form-group">
            <label for="Address">Address</label>
            <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address" name="address"></textarea>
        </div>

        <div class="form-group">
            <input type="submit" value="Register" class="btn btn-primary btn-block">
        </div>

        <p class="already-registered">Already have an account? <a class="linkControl" href="index">Login here</a></p>

    </form>

</div>

<!-- Scripts -->
<script src="script.js"></script>

</body>
</html>
