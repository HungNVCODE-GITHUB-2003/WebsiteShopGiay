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
						<p class="bread"><span><a href="index">Home</a></span> / <span>changepassword</span></p>
					</div>
				</div>
			</div>
		</div>	
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="/forUser/images/img-01.png" alt="IMG">
				</div>

				<form action="change_password2" method="post" class="login100-form validate-form">
					<span class="login100-form-title">
						Change Password
					</span>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid username is required ">
						<input class="input100" type="text" id="username" name="username" value="${username}" placeholder="Username" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-secret" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" id="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "newpassword is required" >
						<input class="input100" type="password" id="newpassword" name="newpassword" placeholder="newpassword" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-plus-circle" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "confirmpassword is required">
						<input class="input100" type="password" id="confirmpassword" name="confirmpassword" placeholder="confirmpassword">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					
					
					<div  class="container-login100-form-btn">
					<h5 class="text-danger">${message}</h5>
						<button type="submit" class="login100-form-btn">
							Confirm
						</button>
					</div>

				
				</form>
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
	