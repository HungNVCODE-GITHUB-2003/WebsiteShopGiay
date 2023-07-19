<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
	
	<div class="colorlib-loader"></div>

	<div id="page">	
	
	<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="index.html">Home</a></span> / <span>Register</span></p>
					</div>
				</div>
			</div>
		</div>
	
	<div class="limiter ">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="/forUser/images/img-01.png" alt="IMG">
				</div>
				<h5 class="text-danger">${message}</h5>
				<form:form method="get" action="/user/register" modelAttribute="item" class="login100-form validate-form" >				
					<span class="login100-form-title">
						Member Register
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Valid username is required">
						<form:input  class="input100" path="username" type="text" id="username" placeholder="Username"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-secret" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "fullname is required">
					    <form:input type="text" id="fullname" path="fullname" class="input100" placeholder="fullname"/>						
						<span class="focus-input100"></span>
						<span class="symbol-input100">
								<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<form:input type="password" id="password" path="password" class="input100" placeholder="Password" />					
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "email is required : ex@abc.xyz">
						<form:input type="email"	id="email" path="email" class="input100" placeholder="Email" />					
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="file-upload">
							<div class="image-upload-wrap">
								<form:input class="file-upload-input" type='file' path="photo" id="photo" 
									onchange="readURL(this);" accept="image/*" />
								<div class="drag-text">
									<h4>Drag and drop Image</h4>
								</div>
							</div>
							<div class="file-upload-content">
								<img class="file-upload-image" src="#" alt="your image" />
								<div class="image-title-wrap">
									<button type="button" onclick="removeUpload()"
										class="remove-image">
										Remove <span class="image-title">Uploaded Image</span>
									</button>
								</div>
							</div>
					</div>
					
					
					<div class="container-login100-form-btn">
						<button type="submit" formaction="/user/register/create" class="login100-form-btn">
							REGISTER
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							<a class="txt2" href="forgot_password">
							Forgotpassword
						</a>
						</span>
						
						|
						<a class="txt2" href="login">
							Or Login
						</a>
					</div>
					
				</form:form>
				
				
			</div>
		</div>
	</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	</div>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	