<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>



<div class="colorlib-loader"></div>

	<div id="page">
		

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="index">Home</a></span> / <span>Purchase Complete</span></p>
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
					<div class="col-sm-12  ">
					<div class="alert alert-warning col row mx-1" role="alert" style="text-align: center;">
											
						<h2 >Thank you for purchasing, Your order is complete</h2>
						 <img src="/forAdmin/public/img/logo.png" alt="user" class="rounded-circle" width="200px" height="80px">
					</div>
					<div class="mx-1 mb-2">
						<h5><strong>Order ID:</strong> ${order.id }</h5>
						<h5><strong>Name:</strong> ${order.account.fullname }</h5>
						<h5><strong>Address:</strong> ${order.address}</h5>
						<h5><strong>Email:</strong> ${order.account.email }</h5>
						<h5><strong>Create Date:</strong> ${order.createDate }</h5>
					</div>
					<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>No.</th>
								<th>Image</th>
								<th class="p-name">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0"/>
							<c:forEach var="item" items="${items}">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td class="p-price first-row">${i=i+1}</td>
									<td class="cart-pic first-row">
									
										<img src="/forUser/images/${item.product.image}" alt="" width=50%></td>
									<td class="cart-title first-row">
										<h5>${item.product.name}</h5>
									</td>
									<td class="p-price first-row">$${item.price }</td>
									<td class="p-price first-row">${item.quantity }</td>
									<td class="total-price first-row">$${item.price*item.quantity}</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<a href="product" class="primary-btn continue-shop">Continue
								shopping</a> 
						</div>
					</div>
					<c:set var="total" value="${0}" />
					<c:forEach var="item" items="${items }">
						<c:set var="total" value="${total+(item.price*item.quantity) }" />
					</c:forEach>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<li class="cart-total">Total: &nbsp &nbsp $${total } <span></span></li>
							</ul>
						</div>
					</div>
				</div>
					</div>
				</div>
			</div>
		</div>
