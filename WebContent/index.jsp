<%@page import="service.collegesignup"%>
<%@page import="java.util.List"%>
<%@page import="service.companysignup"%>
<%@page import="entity.company_login"%>
<%@page import="entity.college_login"%>
<%@page import="entity.drive" %>
<%@page import="service.drivemanager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="title_icon" href="#" />
    <title>Campus Connect Pooling</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">
	<link href="css/self.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
 <style>

 #myInput {
    background-image: url('/css/searchicon.png'); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
    width: 85%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myUL {
    /* Remove default list styling */
    list-style-type: none;
	overflow-x:auto;
	overflow-y:auto
    padding: 0;
    margin: 0;
	width:95%;
}

#myUL li a {
 width:95%;
    margin-top: -1px;  
    padding: 12px; 
    text-decoration: none;
    font-size: 18px; 
    color: black; 
    display: block;
}

#myUL li a.header {
    background-color: #e2e2e2; 
    cursor: default; 
}

#myUL li:hover:not(.header) {
    background-color: #f6f6f6;
}


 #myInputSec {
    background-image: url('/css/searchicon.png'); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
    width: 85%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myULSec {
    /* Remove default list styling */
    list-style-type: none;
	overflow-x:auto;
	overflow-y:auto
    padding: 0;
    margin: 0;
	width:95%;
}

#myULSec li a {
 width:95%;
    margin-top: -1px; /* Prevent double borders */
    padding: 12px; /* Add some padding */
    text-decoration: none; /* Remove default text underline */
    font-size: 18px; /* Increase the font-size */
    color: black; /* Add a black text color */
    display: block; /* Make it into a block element to fill the whole list */
}

#myULSec li a.header {
    background-color: #e2e2e2; 
    cursor: default;
}

#myULSec li:hover:not(.header) {
    background-color: #f6f6f6; 
}

#myUL li:nth-child(even) {
    background-color: #eee;
}

#myUL li:nth-child(odd) {
   background-color:#fff;
}

#myULSec li:nth-child(even) {
    background-color: #eee;
}

#myULSec li:nth-child(odd) {
   background-color:#fff;
}

 </style>

</head>

<body>

    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top" onclick=$("#menu-close").click();> Menu </a>
            </li>
            <li>
                <a href="#top" onclick=$("#menu-close").click();>Home</a>
            </li>
            <li>
                <a href="#about" onclick=$("#menu-close").click();>Notification</a>
            </li>
            <li>
                <a href="#services" onclick=$("#menu-close").click();>Regitry/Login</a>
            </li>
            <li>
                <a href="#portfolio" onclick=$("#menu-close").click();>Collaboratiors</a>
            </li>
            <li>
                <a href="#contact" onclick=$("#menu-close").click();>LocateUs</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1 style="color:#fcf8e3">Campus Connect Pooling</h1>
            <h3 style="color:#fcf8e3">Way for all</h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
        </div>
    </header>

    <!-- About -->
    <section id="about" class="about" style="overflow-y:hidden;max-height:200px">
        <div class="container"  style="overflow-y:hidden;max-height:200px">
            <div class="row" style="overflow-y:hidden;max-height:200px">
                <div class="col-lg-12 text-center" style="overflow-y:hidden;max-height:200px">
                <marquee direction="up" behavior="scroll" scrolldelay="60" onmouseover="stop()" onmouseout="start()">  <h2>Here Latest News is displayed</h2>
                      <p class="lead">List of Upcoming Recruitment Drives.</p>
                        <% 
						 drivemanager d = new drivemanager();	
						  
										  		 List<drive> colleg = d.indexcollege();
												  
												  for (drive dd : colleg) {
										  %>
						
						Drive of  <%=dd.getC_name()%> at
							<%=dd.getCollege()%> , 
							<%=dd.getCity() %>
							is on 
							<%=dd.getDate()%>.
							<br>
						
						<% } %>
							
                        </marquee>
                </div>
            </div>
          </div>
    </section>

    
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>SignUp/Login</h2>
                    <hr class="small">
                    <div class="row">
                     
                       <div class="col-md-4 col-sm-6">
                            
                              
                               <img src="./img/c.png">
                           
							<div class="service-item">
                                <h4>
                                    <strong>Institute</strong>
                                </h4>
                                <p>Registration/Loign facility for the institutes interested in mass placement.</p>
                                <a href="instituteLogin.jsp" class="btn btn-light">SignUp/SignIn </a>
                            
							</div>
                        </div>
                        <div class="col-md-4 col-sm-6">
            
                               <img src="./img/com.ico">
                           
							<div class="service-item">
                                <h4>
                                    <strong>Organisation</strong>
                                </h4>
                                <p>Registration/Loign facility for the organisations interested in campus pool recruitment.</p>
                                <a href="organisationLogin.jsp" class="btn btn-light">SignUp/SignIn</a>
                            
							</div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            
                           
                               <img src="./img/s.ico">
                           
							<div class="service-item">
                                <h4>
                                    <strong>Students</strong>
                                </h4>
                                <p>Registration/Loign facility for studebts interested for job opportunities.</p>
                                <a href="studentLogin.jsp" class="btn btn-light">SignUp/SignIn</a>
                            
							</div>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        
    </section>

 
    <aside class="callout">
        <div class="text-vertical-center">
            <h1>Collaborated Institutes and Organisations</h1>
        </div>
    </aside>


    <section id="portfolio" class="portfolio">
        <div class="container" >
            <div class="row">
                  
				<div class="col-lg-6 text-center">
				
                    <h2>Organisations</h2>
                    <hr class="small">
                  
				  
					<div class="row">
					
                        <div class="col-md-10 col-md-offset-1">
                          
						  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">				  
										<ul id="myUL" style="height:275px">
										  <%
										  		companysignup cs = new companysignup();			
										  		 List<company_login> companyLG = cs.indexcompany();
												  
												  for (company_login org : companyLG) {
										  %>
										  		<li><a href= <%=org.getWebsite() %>><%=org.getC_uname() %></a></li>
										  <%
										  		}
										  %>
										</ul>

                 </div>				
                </div>     
             </div>
				
                
           <div class="col-lg-6 text-center">
		   
                    <h2>Colleges</h2>
                    <hr class="small">
					
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                              <input type="text" id="myInputSec" onkeyup="myFunctionSec()" placeholder="Search for names..">				  
										<ul id="myULSec" style="height:275px">
										 	
										 <%
										  		collegesignup ss = new collegesignup();			
										  		 List<college_login> collegeLG = ss.indexcollege();
												  
												  for (college_login org : collegeLG) {
										  %>
										  		<li><a href= <%=org.getWebsite() %>><%=org.getC_uname() %></a></li>
										  <%
										  		}
										  %>
										 	 
										 
							
										</ul>
                        </div>
                       
                    </div>
                   
                </div>
                         
			</div>
            
        </div>
        
    </section>

	
	
	
    <!-- Call to Action -->
    <aside class="call-to-action bg-primary">
	
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="padding-left:5%;padding-right:5%;">
  <!-- Indicators -->
			  <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" style="padding">
				<div class="item active">
				  <img src="./img/new1.jpg" alt="Los Angeles">
				</div>

				<div class="item">
				  <img src="./img/new2.jpg" alt="Chicago">
				</div>

				<div class="item">
				  <img src="./img/new3.jpg" alt="New York">
				</div>
			  </div>

			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			  </a>
</div>
    </aside>

	
	
	
    <!-- Map -->
    <section id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3560.529646196621!2d75.86441781430123!3d26.82310137040094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396dc825384fed73%3A0x9309596d006f0d1a!2sSKIT+Main+Block!5e0!3m2!1sen!2sin!4v1494348107602"></iframe>
        <br />
       <!--   <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        -->
    </section>

	
	
	
	
	    <!-- jQuery -->
    <script src="js/jquery.js"></script>
	<script src="js/contact.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
	<script>
function myFunction() {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>

	<script>
function myFunctionSec() {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('myInputSec');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myULSec");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>

    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    
    var onMapMouseleaveHandler = function(event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
    </script>

</body>

</html>
