<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

<br>
<div class="container">
    <div class="col-sm-6 bg-light rounded p-4">
        <h3 class="text-primary mb-4">User Profile</h3>
        <form action="updateuser" method="post">
            <div class="form-group">
                <label for="firstName" class="text-secondary">User Name</label>
                <input type="hidden" name="userid" value="${userid}">
                <input type="text" name="username" id="firstName" required placeholder="Your Username*" value="${username}" required class="form-control form-control-lg border-0 rounded-pill">
            </div>
            <div class="form-group">
                <label for="email" class="text-secondary">Email address</label>
                <input type="email" class="form-control form-control-lg border-0 rounded-pill" required minlength="6" placeholder="Email*" value="${email}" required name="email" id="email"
                       aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                    anyone else.</small>
            </div>
            <div class="form-group">
                <label for="password" class="text-secondary">Password</label>
                <div class="input-group">
                    <input type="password" class="form-control form-control-lg border-0 rounded-pill" required placeholder="Password*" value="${password}" required name="password"
                           id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                           title="Must contain: at least one number, one uppercase letter, one lowercase letter,
                               one special character, and 8 or more characters">
                    <div class="input-group-append">
                        <span class="input-group-text border-0 bg-transparent">
                            <input type="checkbox" onclick="showPassword()" class="mr-2">
                            <span class="text-muted small">Show Password</span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="text-secondary">Address</label>
                <textarea class="form-control form-control-lg border-0 rounded" rows="3" placeholder="Enter Your Address" name="address">${address}</textarea>
            </div>
        
            <input type="submit" value="Update Profile" class="btn btn-primary btn-block rounded-pill mt-4">
        </form>
        
        <div class="mt-4">
            <a href="/deleteuser/${userid}" class="btn btn-danger rounded-pill" onclick="return confirm('Are you sure you want to delete your account?')">Delete Account</a>
        </div>

    </div>
</div>

<script>
    function showPassword() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>