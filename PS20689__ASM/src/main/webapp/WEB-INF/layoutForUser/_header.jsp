<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<div class="header-top">
	<div class="container">
		<div class="ht-left">
			<div class="mail-service">
				<i class=" fa fa-envelope"></i> HungSmall@gmail.com
			</div>
			<div class="phone-service">
				<i class=" fa fa-phone"></i> + 84 098 140 2640
			</div>

		</div>
		<div class="ht-right">

			<c:if test="${!isLogin}">
				<a href="/user/login" class="login-panel"><i class="fa fa-user"></i>Login</a>
				<div class="top-social">
					<a href="/user/register"><i class="fa fa-plus pr-1"></i>Register</a>
				</div>
				
				<div class="top-social">
					<a href="?lang=vi"><i class="fa fa-language" aria-hidden="true"></i> Tiếng việt</a>
				</div>
				<div class="top-social">
					<a href="?lang=en"><i class="fa fa-language" aria-hidden="true"></i> English</a>
				</div>
				
				<div class="top-social">
					<a href="#"><i class="fa fa-bell pr-1" aria-hidden="true"></i>Notification</a>
				</div>

			</c:if>
			<c:if test="${isLogin}">
				<c:if test="${admin}">
					<a href="/admin/index" class="login-panel"><i
						class="fa fa-user"></i>Administration</a>
				</c:if>
				<div class="top-social">
					<a href="profile" class="text-primary" style="font-weight: bolder;">${fullname}</a>
					<a class="text-danger" id="btnLogOff" href="/logout" title="">[Logout]</a>
				</div>
				<div class="top-social">
					<a href="change_password2" class="text-primary"
						style="font-weight: bolder;">Change Password</a>
				</div>


			</c:if>

		</div>
	</div>
</div>

<!-- header -->
<nav class="colorlib-nav" role="navigation">
	<div class="top-menu">
		<div class="container">
			<div class="row">
				<div class="col-sm-7 col-md-9">
					<div id="colorlib-logo">
						<a href="/user/index">Footwear</a>
					</div>
				</div>
				<div class="col-sm-5 col-md-3">
					<form action="/user/search" method="post" class="search-wrap">
						<div class="form-group">
							<input type="text" placeholder="What do you need?"
								name="keywords" value="" class="form-control search">
							<button class="btn btn-primary submit-search text-center"
								type="submit">
								<i class="icon-search"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 text-left menu-1">
					<ul>
						<li class="active" style="font-size: 18px">
						
						<a
							href="/user/index"><s:message code="lo.mn.home"/></a></li>
						<li class="has-dropdown"><a href="/user/product"><s:message code="lo.mn.shop"/></a>
							<ul class="dropdown">
								<li><a href="/user/brand?field1=1000">Nike</a></li>
								<li><a href="/user/brand?field1=1001">Adidas</a></li>
								<li><a href="/user/brand?field1=1002">Jordan</a></li>
								<li><a href="/user/brand?field1=1003">New Balance</a></li>
								<li><a href="/user/brand?field1=1004">Converse</a></li>
								<li><a href="/user/brand?field1=1005">MLB</a></li>
								<li><a href="/user/brand?field1=1006">Valentino</a></li>
								<li><a href="/user/brand?field1=1007">Christian</a></li>
								<li><a href="/user/brand?field1=1000">Binh minh</a></li>
								<li><a href="/user/brand?field1=1000">Puma</a></li>
								<li><a href="/user/brand?field1=1000">Supreme</a></li>
							</ul></li>

						<li><a href="/user/blog"><s:message code="lo.mn.about"/></a></li>
						<li><a href="/user/contact"><s:message code="lo.mn.contact"/></a></li>
						<li class="has-dropdown"><a href="/user/product"><s:message code="lo.mn.account"/></a>
							<ul class="dropdown">
								<li><a href="/user/login">Login</a></li>
								<li><a href="/user/register">Register</a></li>
								<li><a href="/user/forgot_password">Forgot Password</a></li>
								<li><a href="/user/change_password">Change Password</a></li>

							</ul></li>
						<li class="cart"><a style="color:red"; href="/user/cart"><i
								class="icon-shopping-cart" ></i > Cart {${cart.getCount()}}</a>
								
								
								</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="sale">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 offset-sm-2 text-center">
					<div class="row">
						<div class="owl-carousel2">
							<div class="item">
								<div class="col">
									<h3>
										<a href="#">25% off (Almost) Everything! Use Code: Summer
											Sale</a>
									</h3>
								</div>
							</div>
							<div class="item">
								<div class="col">
									<h3>
										<a href="#">Our biggest sale yet 50% off all summer shoes</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>