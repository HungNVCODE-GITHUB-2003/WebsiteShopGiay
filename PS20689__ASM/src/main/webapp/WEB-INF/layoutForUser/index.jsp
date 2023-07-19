<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!--head-->
<head>
	<meta charset="UTF-8">
	<title>HungSmall_FootWear</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	
	 <!-- Favicon -->
    <link rel="shortcut icon" href="/forUser//images/favicon.ico">
	<!-- Animate.css -->
	<link rel="stylesheet" href="/forUser/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/forUser/css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="/forUser/css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/forUser/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="/forUser/css/style1.css" type="text/css">
	<link rel="stylesheet" href="/forUser/css/style2.css" type="text/css">

    <link rel="stylesheet" href="/forUser/css/image.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/styleProfile.css" type="text/css">
    
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="/forUser/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="/forUser/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="/forUser/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/forUser/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="/forUser/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="/forUser/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="/forUser/css/style.css">
    <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
    
  
	<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="/forUser/vendor/bootstrap/css/bootstrap.min.css"> -->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/forUser/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/forUser/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/forUser/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/forUser/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/forUser/css/util.css">
	<link rel="stylesheet" type="text/css" href="/forUser/css/main.css">
<!--===============================================================================================-->
      <link rel="stylesheet" href="/forUser/css/jquery-ui.min.css" type="text/css">
    
    <!--===============================================================================================-->	
	<script src="/forUser/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/forUser/vendor/bootstrap/js/popper.js"></script>
	<script src="/forUser/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/forUser/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/forUser/vendor/tilt/tilt.jquery.min.js"></script>
	
<!--===============================================================================================-->
	
   <script>
   
   
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [0, 0],
			slide : function(event, ui) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>
    
    
    
</head>

<!--/head-->

<!--body-->
<body>
	<tiles:insertAttribute name="header"/>
	<%-- <tiles:insertAttribute name="adver"/> --%>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>

    	<!-- jQuery -->
	<script src="/forUser/js/jquery.min.js"></script>
   <!-- popper -->
   <script src="/forUser/js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="/forUser/js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="/forUser/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="/forUser/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="/forUser/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="/forUser/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="/forUser/js/jquery.magnific-popup.min.js"></script>
	<script src="/forUser/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="/forUser/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="/forUser/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="/forUser/js/main.js"></script>
    
    <script src="/forUser/js/main1.js"></script>
    <script src="/forUser/js/jquery.slicknav.js"></script>
    <script src="/forUser/js/owl.carousel.min.js"></script>
    <script src="/forUser/js/jquery-ui.min.js"></script>
    <script src="/forUser/js/jquery.countdown.min.js"></script>
    <script src="/forUser/js/main3.js"></script>
 
    
</body>

<!--/body-->