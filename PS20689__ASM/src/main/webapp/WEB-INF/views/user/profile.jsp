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
						<p class="bread"><span><a href="index">Home</a></span> / <span>PROFILE</span></p>
					</div>
				</div>
			</div>
		</div>
	
	
 <div class="container mt-5">
    
    <div class="row d-flex justify-content-center">
        
        <div class="col-md-9">
            
            <div class="card p-3 py-4">
                
                <div class="text-center">
                    <img src="/forAdmin/images/${photo}" width="100" class="rounded-circle">
                </div>
                
                <div class="text-center mt-3">
                    <span class="bg-secondary p-1 px-4 rounded text-white">Pro</span>
                    <h5 class="mt-2 mb-0">${username}</h5>
                    <br>
                    <div>
                    <span>Fullname : ${fullname}</span> 
                    </div>
                    
                     <br>
                    <div>
                    <span>Email : ${email}</span>
							
                    </div>
                   
							
                    
                     <ul class="social-list">
                        <li><i class="fa fa-facebook"></i></li>
                        <li><i class="fa fa-dribbble"></i></li>
                        <li><i class="fa fa-instagram"></i></li>
                        <li><i class="fa fa-linkedin"></i></li>
                        <li><i class="fa fa-google"></i></li>
                    </ul>
                    
                    <div class="buttons" >
                        <form action="/user/myorder" method="post">
								<input type="hidden" name="username" value="${username}"
									onblur="this.form.submit()">
								<button class="btn btn-outline-primary text-light col" style="font-size:20px; font-weight:bolder;">My Order</button>
							</form>
                       
                      
                    </div>
                    
                    
                </div>
                
               
                
                
            </div>
            
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
	
	 
	