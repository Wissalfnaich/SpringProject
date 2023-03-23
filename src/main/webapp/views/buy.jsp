<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>


  
  <form>
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Information</h1>
      </div>
  
      <div class="form-row">
        <div class="form-group">
          <label for="first-name">First Name</label>
          <input id="first-name" type="text" name="first-name" placeholder="Enter your first name" required>
        </div>
  
        <div class="form-group">
          <label for="last-name">Last Name</label>
          <input id="last-name" type="text" name="last-name" placeholder="Enter your last name" required>
        </div>
      </div>
  
      <div class="form-row">
        <div class="form-group">
          <label for="card-number">Card Number</label>
          <input id="card-number" type="text" name="card-number" placeholder="Enter your card number" required>
        </div>
  
        <div class="form-group">
          <label for="expiry-date">Expiry Date</label>
          <input id="expiry-date" type="text" name="expiry-date" placeholder="MM / YY" required>
        </div>
  
        <div class="form-group">
          <label for="cvc">CVC</label>
          <input id="cvc" type="text" name="cvc" placeholder="Enter your CVC" required>
        </div>
      </div>
  
      <div class="card-wrapper">
        <!-- Card image will appear here when CCV field is clicked -->
        <div class="card-image"></div>
        <div class="card-number"></div>
        <div class="card-date"></div>
        <div class="card-cvc"></div>
      </div>
  
      <div class="form-row">
        <div class="form-group">
          <label for="street-address">Street Address</label>
          <input id="street-address" type="text" name="street-address" placeholder="Enter your street address" required>
        </div>
  
        <div class="form-group">
          <label for="city">City</label>
          <input id="city" type="text" name="city" placeholder="Enter your city" required>
        </div>
  
        <div class="form-group">
          <label for="zip-code">ZIP Code</label>
          <input id="zip-code" type="text" name="zip-code" placeholder="Enter your ZIP code" required>
        </div>
      </div>
  
      <div class="form-row">
        <div class="form-group">
          <label for="email">Email</label>
          <input id="email" type="email" name="email" placeholder="Enter your email address" required>
        </div>
      </div>
  
      <div class="form-row">
        <div class="form-group">
          <input id="submit-button" type="submit" value="Submit">
        </div>
      </div>
    </div>
  </form>
  
  </div>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500);

/* Main styles */
body {
  background-color: #F5F5F5;
  font-family: 'Roboto', sans-serif;
}

.form-container {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  margin: 0 auto;
  max-width: 800px;
  padding: 40px;
}

.personal-information {
  background-color: #3cc5a1;
  border-radius: 10px 10px 0 0;
  color: #fff;
  font-size: 2rem;
  margin: -40px;
  padding: 40px;
  text-align: center;
}

.form-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-bottom: 20px;
}

.form-group {
  flex-basis: calc(33.33% - 20px);
}

.form-group label {
  color: #105106;
  display: block;
  font-size: 1.2rem;
  font-weight: bold;
  margin-bottom: 5px;
}

.form-group input[type="text"],
.form-group input[type="email"] {
  border: none;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  font-size: 1.2rem;
  padding: 10px;
  width: 100%;
}

.form-group input[type="text"]::placeholder,
.form-group input[type="email"]::placeholder {
  color: #B8B8B8;
}

.card-wrapper {
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  display: flex;
  justify-content: center;
  margin: 0 auto;
  padding: 20px;
  width: 100%;
}

.card-wrapper::before {
  content: '';
  background-position: center;
  background-repeat: no-repeat;
  background-size: contain;
  height: 120px;
  position: absolute;
  width: 120px;
}

.card-wrapper.active::before {
}

.form-group input[type="submit"] {
  background-color: #3cc5a1;
  border: none;
  border-radius: 5px;
  color: #fff;
  cursor: pointer;
  font-size: 1.2rem;
  margin-top: 20px;
  padding: 10px 20px;
  transition: background-color 0.3s ease;
}

.form-group input[type="submit"]:hover {
  background-color: #3cc5a1;
}

</style>
<script>
$('form').card({
    container: '.card-wrapper',
    width: 280,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});
</script>
</body>
</html>