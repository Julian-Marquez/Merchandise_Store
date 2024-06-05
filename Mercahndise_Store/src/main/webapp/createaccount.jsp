<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Account Creation</title>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css'><link rel="stylesheet" href="css/create.css">

</head>
<body>
<script>
  function validatePassword() {
    var password = document.getElementById("Password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    // Check if password length is at least 8 characters
    if (password.length < 8) {
      alert("Password must be at least 8 characters long");
      return false;
    }

    // Check if password contains at least one symbol
    if (!/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/.test(password)) {
      alert("Password must contain at least one symbol");
      return false;
    }

    // Check if password matches confirmed password
    if (password !== confirmPassword) {
      alert("Passwords do not match");
      return false;
    }

    // Password meets all requirements
    return true;
  }
</script>

<!-- partial:index.partial.html -->
<div class="container">
	<div class="screen">
		<div class="screen__content">
			<form action="Accounts" method="get" class="login" onsubmit="return validatePassword()">

			<h3>Sign Up</h3>
       
			
			<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="text" name="Fname" class="login__input" placeholder="First Name" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="text" name="Lname" class="login__input" placeholder="Last Name" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="email" name="Email" class="login__input" placeholder="Email" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input type="password" id="Password" name="Password" class="login__input" placeholder="Password" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input type="password" id="confirmPassword" name="ConfirmedPassword" class="login__input" placeholder="Confirmed Password" required>
				</div>
				<div class="login__field">
					<input type="text" name="Username" class="login__input" placeholder="Username" required>
				</div>
				<button class="button login__submit">
					<span class="button__text">Sign Up Now</span>
					<i class="button__icon fas fa-chevron-right"></i>
				</button>				
			</form>
			
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
<!-- partial -->
  
</body>
</html>
