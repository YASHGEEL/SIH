<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>

	<META Http-Equiv="Cache-Control" Content="no-cache">
	<META Http-Equiv="Pragma" Content="no-cache">
	<META Http-Equiv="Expires" Content="0">

  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
 <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
 
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body background="./img/new.png">
       
	  <nav class="navbar navbar-default navbar" style="opacity:0.6; background-color:black;">
	<div class="col-md-4 col-md-offset-4">
		<h2 style="text-align:center"><a href='index.jsp'>Campus Connect Pool</a></h2>
		 </div>
		 </nav>
	  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="studentSignup.jsp" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name ="first_name" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"  name ="last_name" required autocomplete="off"/>
            </div>
          </div>
		   <div class="field-wrap">
            <label>
              Username<span class="req">*</span>
            </label>
            <input type="text" name="uname" required autocomplete="off"/>
          </div>
		   <div class="field-wrap">
            <label>
              College Name<span class="req">*</span>
            </label>
            <input type="text" name="college_name" required autocomplete="off"/>
          </div>
		<div class="field-wrap">
            <label>
             Mob. No.<span class="req">*</span>
            </label>
            <input type="number" name="mobile_no" required autocomplete="off"/>
          </div>
		  
          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome!</h1>
          
          <form action="studentloginauthentication.jsp" method="post">
          
            <div class="field-wrap">
            <label>
              Username<span class="req">*</span>
            </label>
            <input type="text" name="uname" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 

    <script src="js/index.js"></script>
	
	<script>
	$(document).ready(function() {
		if(document.referrer != 'http://localhost:8080/sih/index.jsp'){
	    history.pushState(null, null, 'studentLogin.jsp');
	    window.addEventListener('popstate', function () {
	        history.pushState(null, null, 'studentLogin.jsp');
	    });
		}
	});
	</script>


    <script src="js/index.js"></script>

</body>
</html>
    