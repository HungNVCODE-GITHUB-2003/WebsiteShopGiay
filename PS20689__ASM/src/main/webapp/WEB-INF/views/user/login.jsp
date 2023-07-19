<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	


	<div id="page" id="website">	
	
	<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="index.html">Home</a></span> / <span>Login</span></p>
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
				
				<form action="login" method="post" class="login100-form validate-form">
					<span class="login100-form-title">
						Member Login
					</span>
					

					<div class="wrap-input100 validate-input" data-validate = "Valid username is required">
						<input class="input100" type="text" id="username" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-secret" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid Password is required">
						<input class="input100" type="password" id="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input">
                                <div class="gi-more">
                                    <label for="save-pass" style="font-weight: bold;">
                                        Save Password
                                        <input  type="checkbox" name="remember" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    
                                </div>
                                
                    </div>
					<div class="container-login100-form-btn">
					<h5 class="text-danger">${message}</h5>
						<!-- 
						<div class="alertt">
            <div class="processS"></div>
            <ion-icon name="shield-checkmark-outline"></ion-icon>
            <span>Bạn chưa nhập thông tin ? </span>
        </div> -->


						<button type="submit" class="login100-form-btn box">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
						<a class="txt2" href="forgot_password">
							Forgot Password
						</a>
						||
						<a class="txt2" href="change_password">
							Change Password
						</a>
							
						</span>
						
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="register">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
		</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
		
/*  const box = document.querySelector('.box')
const alert = document.querySelector('.alertt')

box.addEventListener('click', () => {
    alert.style.right = '20px'
    let length = 70
    let process = document.querySelector('.processS')
    const run = setInterval(() => {
        process.style.height = length + 'px'
        length -= 5
        if (length <= -10) {
            clearInterval(run)
            alert.style.right = '-500px'
        }
    }, 200)
}) 
		 */
		
	</script>
	

	