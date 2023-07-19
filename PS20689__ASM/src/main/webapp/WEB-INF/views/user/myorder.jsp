<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="colorlib-loader"></div>

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
								<th>Order ID</th>
								<th>Create Date</th>
								<th>Address</th>
								<th>Order Details</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${items}">
								<tr>
									<td class="p-price text-dark">${i=i+1}</td>
									<td class="p-price first-row">
										<h5>${item.id }</h5>
									</td>
									<td class="p-price text-dark first-row">${item.createDate}</td>
									
									
									<td class="p-price text-dark first-row">${item.address}</td>
									<td class="total-price first-row" style="">
										<a href="/user/myOrderDetail?id=${item.id }"
											style="font-size: 14px">Order Detail</a>
									</td>
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
		
