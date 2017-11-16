<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="UTF-8">
  <title>Login form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">


</head>
<body>
  <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Login form</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
</head>
<body>
	<div class="iphone-wrap">
		<div class="login-wrap">
			<div class="login-form-wrap">
				<div class="card-holder-wrap">
					<div class="hole"></div>
					<div class="l-stroke"></div>
					<div class="r-stroke"></div>
					<div class="ring-large-wrap"></div>
					<div class="ring-small-wrap"></div>
				</div>
				<form action="LoginServlet" class="login-form" method="post">
					<h1 class="freeb"><img src="https://i.imgur.com/U4E6o3x.png" alt="freebies gallery"></h1>
					<div class="input-wrap">
						<label for="" class="user-id"><input type="text" name="userId" placeholder="Enter your User ID"></label> 
						<hr class="form-hr">
						<label for="" class="password"><input type="password" name="password" placeholder="Enter Your Password"></label> 
					</div>
					<div class="remember">
						<span>Remember me</span>
						<div class="switch">
						    <input type="checkbox" id="switch" class="switch-check">
						    <label for="switch" class="switch-label">				   
					    	<span class="switch-slider switch-slider-on"></span>
        					<span class="switch-slider switch-slider-off"></span></label>

						</div>
					</div>
					<input type="submit" class="button" value="Login">
					<a href="#" class="forgot">Forgot Password?</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
  
  
</body>
</html>