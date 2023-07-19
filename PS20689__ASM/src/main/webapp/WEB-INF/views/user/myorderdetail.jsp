<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div id="page">
		
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="/home/index">Home</a></span> / <span>Purchase Complete</span></p>
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
								<h3><a href="cart"class="">Shopping Cart</a></h3>
							</div>
							<div class="process text-center active">
								<p><span>02</span></p>
								<h3><a href="checkout"class="">Checkout</a></h3>
							</div>
							<div class="process text-center active">
								<p><span>03</span></p>
								<h3><a href="myorder"class="">Order Complete</a></h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 ">
						<div class="alert alert-warning col row mx-1" role="alert">
						<h2>Thank you for purchasing, Your order is complete</h2>

						</div>
						
						
						<p>
							<a href="index"class="btn btn-primary btn-outline-primary">Home</a>
							<a href="product"class="btn btn-primary btn-outline-primary"><i class="icon-shopping-cart"></i> Continue Shopping</a>
						</p>
					</div>
				</div>
				<div class="row">
			<div class="col-lg-12">
				<div class="cart-table">
					<table>
						<thead>
							<tr>
								<th>No.</th>
								<th>Product Image</th>
								<th>Product ID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Quantity</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${page.content}">
								<tr style="font-weight: bold;">
									<td class="p-price text-dark">${i=i+1}</td>
									<td><img src="/forUser/images/${item.product.image}"
										alt="" width=100px height="100px"/></td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td>$${item.product.price}</td>
									<td>${item.quantity }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
			</div>
		</div>
		</div>
		
