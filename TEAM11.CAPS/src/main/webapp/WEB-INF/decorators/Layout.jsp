<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/fav.png">
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Education</title>
		
	<%-- <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
	
	<c:url value="/css/linearicons.css" var="linearicons"/>
	<link rel="stylesheet" href="${linearicons}">
	
	<c:url value="/css/font-awesome.min.css" var="awesome"/>
	<link rel="stylesheet" href="${awesome}">
 --%>
	<c:url value="/css/bootstrap.min.css" var="bs"/>
	<link rel="STYLESHEET" type="text/css"	href="${bs}" />
<%-- 
	<c:url value="/css/magnific-popup.css" var="magnific"/>
	<link rel="stylesheet" href="${magnific}">
	
	<c:url value="/css/nice-select.css" var="niceselect"/>
	<link rel="stylesheet" href="${niceselect}">	
	
	<c:url value="/css/animate.min.css" var="animate"/>						
	<link rel="stylesheet" href="${animate}">
	
	<c:url value="/css/owl.carousel.css" var="carousel"/>
	<link rel="stylesheet" href="${carousel}">		
	
	<c:url value="/css/jquery-ui.css" var="jquery"/>	
	<link rel="stylesheet" href="${jquery}">	
	
	<c:url value="/css/main.css" var="main"/>		
	<link rel="stylesheet" href="${main}">
	 --%>
	</head>
	<body>

	<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="container">
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="#">
					<spring:message code="title.application" />
				</a>
	        </div>
	        <!-- Collect the nav links, forms, and other content for toggling -->
	        <div class="collapse navbar-collapse" id="navbarCollapse">
	        	 <%@ include file="Menu.jsp"%> 
	            <!-- <ul class="nav navbar-nav">
	                <li class="active"><a href="https://www.tutorialrepublic.com" target="_blank">Home</a></li>
	                <li><a href="https://www.tutorialrepublic.com/about-us.php" target="_blank">About</a></li>
	                <li><a href="https://www.tutorialrepublic.com/contact-us.php" target="_blank">Contact</a></li>
	            </ul>  -->
	        </div>
	    </div>
	</nav>
	<div class="container">
	    <div class="jumbotron">
	       <%@include file="Header.jsp"%>
			<dec:head />
	    </div>
	  
	    <div class="row">
		        <h3>
					<spring:message code="${bodyTitle}" />
				</h3>
				<dec:body />
	    </div>
	        <hr>
	    <div class="row">
	        <div class="col-sm-12">
	            <footer>
	                <small> &copy; TEAM11 CAPS 2018 </small>
	            </footer>
	        </div>
	    </div>
	</div>

 
 			<%--   <header id="header" id="home">
	  		<div class="header-top">
	  			<div class="container">
			  		<div class="row">
			  			<div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
			  			<a href="javascript:;"><span class="text">Course Application Processing System</span></a>
			  				<!-- <ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-behance"></i></a></li>
			  				</ul> -->			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
			  				<a href="tel:+953 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text">+953 012 3654 896</span></a>
			  				<a href="mailto:support@colorlib.com"><span class="lnr lnr-envelope"></span> <span class="text">support@colorlib.com</span></a>			
			  			</div>
			  		</div>			  					
	  			</div>
			</div>
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.html">
			        <img src="${pageContext.request.contextPath}/img/logo.png" alt="fgsf">
			        <img src="<c:url value='/img/logo.png'/>"/>
			      
			        </a>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li><a href="index.html">Home</a></li>
			          <li><a href="about.html">About</a></li>
			          <li><a href="courses.html">Courses</a></li>
			          <li><a href="events.html">Events</a></li>
			          <li><a href="gallery.html">Gallery</a></li>
			          <li class="menu-has-children"><a href="">Blog</a>
			            <ul>
			              <li><a href="blog-home.html">Blog Home</a></li>
			              <li><a href="blog-single.html">Blog Single</a></li>
			            </ul>
			          </li>	
			          <li class="menu-has-children"><a href="">Pages</a>
			            <ul>
		              		<li><a href="course-details.html">Course Details</a></li>		
		              		<li><a href="event-details.html">Event Details</a></li>		
			                <li><a href="elements.html">Elements</a></li>
					          <li class="menu-has-children"><a href="">Level 2 </a>
					            <ul>
					              <li><a href="#">Item One</a></li>
					              <li><a href="#">Item Two</a></li>
					            </ul>
					          </li>					                		
			            </ul>
			          </li>					          					          		          
			          <li><a href="contact.html">Contact</a></li>
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->
		<!-- start banner Area -->
<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Popular Courses		
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="courses.html"> Popular Courses</a></p>
							
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->
		<section class="course-details-area pt-120">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 left-contents">
							<div class="main-image">
								
								 <img class="img-fluid" src="<c:url value='/img/m-img.jpg'/>"/>
							</div>
							<div class="jq-tab-wrapper" id="horizontalTab">
									<spring:message code="${bodyTitle}" />
									<dec:body />
	                        </div>
						</div>
						<!-- <div class="col-lg-4 right-contents">
							
						</div> -->
					</div>
				</div>	
			</section>
			
			
 			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					
					<div class="footer-bottom row align-items-center justify-content-between">
						<p class="footer-text m-0 col-lg-6 col-md-12">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
						</p>
						
					</div>						
				</div>
			</footer>	 --%>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	    <script src="<c:url value="/js/jquery.min.js" />"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
	    <script src="<c:url value="/js/bootstrap.min.js" />"></script>
	    
	    	<%-- <script src="<c:url value="/js/vendor/jquery-2.2.4.min.js"/>"></script>
	    	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			
			<script src="<c:url value="/js/vendor/bootstrap.min.js"/>"></script>
						
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="<c:url value="/js/easing.min.js"/>"></script>			
			<script src="<c:url value="/js/hoverIntent.js"/>"></script>
			<script src="<c:url value="/js/superfish.min.js"/>"></script>	
			<script src="<c:url value="/js/jquery.ajaxchimp.min.js"/>"></script>
			<script src="<c:url value="/js/jquery.magnific-popup.min.js"/>"></script>	
    		<script src="<c:url value="/js/jquery.tabs.min.js"/>"></script>						
			<script src="<c:url value="/js/jquery.nice-select.min.js"/>"></script>	
			<script src="<c:url value="/js/owl.carousel.min.js"/>"></script>									
			<script src="<c:url value="/js/mail-script.js"/>"></script>	
			<script src="<c:url value="/js/main.js"/>"></script> --%>	
	</body>
</html>