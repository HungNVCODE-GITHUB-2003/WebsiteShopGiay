<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="colorlib-loader"></div>

<div id="page">


	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="bread">
						<span><a href="index">Home</a></span> / <span>Checkout</span>
					</p>
				</div>
			</div>
		</div>
	</div>


	<div class="colorlib-product">
		<div class="container">

			<div class="row row-pb-lg">
				<div class="col-sm-10 offset-md-1">
					<div class="process-wrap">
						<div class="process text-center active">
							<p>
								<span>01</span>
							</p>
							<h3>Shopping Cart</h3>
						</div>
						<div class="process text-center active">
							<p>
								<span>02</span>
							</p>
							<h3>Checkout</h3>
						</div>
						<div class="process text-center">
							<p>
								<span>03</span>
							</p>
							<h3>Order Complete</h3>
						</div>
					</div>
				</div>
			</div>
			<form action="order_detail" method="post">
				<div class="row">

					<div class="col-lg-8">
						<form action="order_detail" method="post" class="colorlib-form">
							<h2>Billing Details</h2>
							<div class="row">
								<!-- <div class="col-md-12">
									<div class="form-group">
										<label for="country">Select Country</label>
										<div class="form-field">
											<i class="icon icon-arrow-down3"></i> <select name="people"
												id="people" class="form-control">
												<option value="#">Select country</option>
												<option value="#">Alaska</option>
												<option value="#">China</option>
												<option value="#">Japan</option>
												<option value="#">Korea</option>
												<option value="#">Philippines</option>
											</select>
										</div>
									</div>
								</div> -->

								<div class="col-md-6">
									<div class="form-group">
										<label for="fname">First Name</label> <input type="text"
											id="fname" class="form-control" placeholder="Your firstname">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="lname">Last Name</label> <input type="text"
											id="lname" class="form-control" placeholder="Your lastname">
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label for="companyname">Phone Number</label> <input
											type="text" id="companyname" class="form-control"
											placeholder="Phone Number">
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label for="fname">Address</label> <input type="text"
								id="fir" name="address" class="form-control"
											placeholder="Enter Your Address">
									</div>

								</div>

								<!-- <div class="col-md-12">
									<div class="form-group">
										<label for="companyname">Town/City</label> <input type="text"
											id="towncity" class="form-control" placeholder="Town or City">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="stateprovince">State/Province</label> <input
											type="text" id="fname" class="form-control"
											placeholder="State Province">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="lname">Zip/Postal Code</label> <input type="text"
											id="zippostalcode" class="form-control"
											placeholder="Zip / Postal">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="email">E-mail Address</label> <input type="text"
											id="fir" name="address" class="form-control"
											placeholder="State Province">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="Phone">Phone Number</label> <input type="text"
											id="zippostalcode" class="form-control" placeholder="">
									</div>
								</div> -->

								<!-- <div class="col-md-12">
									<div class="form-group">
										<div class="radio">
										  <label><input type="radio" name="optradio"> Create an Account? </label>
										  <label><input type="radio" name="optradio"> Ship to different address</label>
										</div>
									</div>
								</div> -->
							</div>
						</form>
					</div>

					<div class="col-lg-4">
						<div class="row">
							<div class="col-md-12">
								<div class="cart-detail">
									<h2>Cart Total</h2>
									<ul>
										<li><span style="font-weight: bold;">Product</span> <span
											style="font-weight: bold;">Total</span> <c:forEach var="item"
												items="${cart.items}">
												<ul>


													<li><span>${item.name } <i class="fa fa-times"
															aria-hidden="true"></i> ${item.qty}
													</span> <span>$${item.price * item.qty}</span></li>

												</ul>
											</c:forEach></li>
										<li><span style="font-weight: bold;">Shipping</span> <span>$0.00</span></li>
										<li><span style="font-weight: bold;">Order Total</span> <span>$${cart.total
												}</span></li>
									</ul>
								</div>
							</div>

							<div class="w-100"></div>

						<!-- 	<div class="col-md-12">
								<div class="cart-detail">
									<h2>Payment Method</h2>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
												<label><input type="radio" name="optradio">
													Direct Bank Tranfer</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
												<label><input type="radio" name="optradio">
													Check Payment</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
												<label><input type="radio" name="optradio">
													Paypal</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="checkbox">
												<label><input type="checkbox" value=""> I
													have read and accept the terms and conditions</label>
											</div>
										</div>
									</div>
								</div>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-primary">Place
									Order</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>


</div>

<div class="gototop js-top">
	<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>
