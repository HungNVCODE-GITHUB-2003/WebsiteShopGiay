<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<div class="colorlib-loader"></div>

	<div id="page">
		
		<c:if test="${cart.getCount() == 0 }">
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="index.html">Home</a></span> / <span>Shopping Cart</span></p>
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
                                <p><span>01</span></p>
                                <h3>Shopping Cart</h3>
                            </div>
                            <div class="process text-center active">
                                <p><span>02</span></p>
                                <h3>Checkout</h3>
                            </div>
                            <div class="process text-center active">
                                <p><span>03</span></p>
                                <h3>Order Complete</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-10 offset-sm-1 text-center">
                        <p class="icon-addcart"><span><i class="icon-check"></i></span></p>
                        <h2 class="mb-4">Thank you for purchasing, Your order is complete</h2>
                        <p>
                            <a href="index" class="btn btn-primary btn-outline-primary">Home</a>
                            <a href="product" class="btn btn-primary btn-outline-primary"><i class="icon-shopping-cart"></i> Continue Shopping</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
		</c:if>
		<c:if test="${cart.getCount()!= 0 }">

		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 offset-md-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-lg">
						<div class="col-lg-12">
				<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>Image</th>
								<th class="p-name">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${cart.items}">
								<form action="/user/cart/update" method="post">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td class="cart-pic first-row"><img
											src="/forUser/images/${item.image}" alt="" width=50%>
											</td>
										<td class="cart-title first-row">
											<h5>${item.name }</h5>
										</td>
										<td class="p-price first-row">${item.price }</td>
										<td>
											<div class="pt-4">
												<a 	class='btn btn-dark btn-xs' style=""  href="/user/cart/sub/${item.id}"> - </a>
												<input name="qty" value="${item.qty}" min="0" onblur="this.form.submit()" class="text-center text-danger" style="width: 50px; height: 30px; font-size:18px; font-weight: bolder; border: none"> 
												<a class='btn btn-dark btn-xs text-light'  href="/user/cart/add/${item.id}">+</a> 
											</div>
										</td>
										<td class="total-price first-row">${item.price * item.qty}</td>
										<td class="close-td first-row"><a
											class='btn btn-xs text-danger'  style="font-weight: bolder"
											href="/user/cart/remove/${item.id}"><span
												class="glyphicon glyphicon-trash" ></span> <i class="fa fa-window-close" aria-hidden="true"></i> </a>
												
												</td>
									</tr>
								</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<a href="/user/product" class="primary-btn continue-shop">Continue
								shopping</a> <a href="/user/cart/clear" class="primary-btn up-cart">Clear
								cart</a>
						</div>
					</div>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<li class="cart-total">Total <span>${cart.total }</span></li>
							</ul>
							<c:if test="${!isLogin}">
								<a href="/user/login" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
							<c:if test="${isLogin}">
								<a href="/user/checkout" class="proceed-btn">PROCEED TO CHECK OUT</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
				</div>
				<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="total-wrap">
							<div class="row">
								<div class="col-sm-8">
									<form action="#">
										<div class="row form-group">
											<div class="col-sm-9">
												<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
											</div>
											<div class="col-sm-3">
												<input type="submit" value="Apply Coupon" class="btn btn-primary">
											</div>
										</div>
									</form>
								</div>
								<div class="col-sm-4 text-center">
									<div class="total">
										<div class="sub">
											<p><span>Subtotal:</span> <span>${cart.total }</span></p>
											<p><span>Delivery:</span> <span>$0.00</span></p>
											<p><span>Discount:</span> <span>$45.00</span></p>
										</div>
										<div class="grand-total">
											<p><span><strong>Total:</strong></span> <span>$450.00</span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>Related Products</h2>
					</div>
				</div>
				<div class="row">
					<div class="col partner-col text-center">
                        <img src="/forUser/images/brand-1.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                    </div>
                    <div class="col partner-col text-center">
                        <img src="/forUser/images/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                    </div>
                    <div class="col partner-col text-center">
                        <img src="/forUser/images/brand-3.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                    </div>
                    <div class="col partner-col text-center">
                        <img src="/forUser/images/brand-4.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                    </div>
                    <div class="col partner-col text-center">
                        <img src="/forUser/images/brand-5.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                    </div>
				</div>
			</div>
		</div>
</c:if>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	
	