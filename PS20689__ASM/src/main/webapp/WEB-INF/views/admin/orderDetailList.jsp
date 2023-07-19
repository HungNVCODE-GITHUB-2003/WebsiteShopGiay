<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">
			<div class="card mb-3 mb-md-4">

				<div class="card-body">
					<!-- Breadcrumb -->
					<nav class="d-none d-md-block" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Admins</a></li>
							<li class="breadcrumb-item active" aria-current="page">Order
								detail</li>

						</ol>
					</nav>

					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">Order detail List</div>

					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="col row">
								<div class="col-md-4 alert alert-danger">
									<h3 class="text-center">Order</h3>
									<h5>ID: ${ord.id }</h5>
									<h5>Create Date: ${ord.createDate }</h5>
								</div>
								<div class="col-md-4 offset-md-4 alert alert-danger">
									<h3 class="text-center">Customer</h3>
									<h5>ID: ${ord.account.username }</h5>
									<h5>Name: ${ord.account.fullname }</h5>
									<h5>Address: ${ord.address }</h5>
									<h5>Email: ${ord.account.email }</h5>
								</div>
							</div>

							<table class="table text-center">
								<thead>
									<tr>
										<th style="font-weight: bolder; font-size: 18px">OrderDetail
											ID</th>
										<th style="font-weight: bolder; font-size: 18px">Product
											Image</th>
										<th style="font-weight: bolder; font-size: 18px">Product
											ID</th>
										<th style="font-weight: bolder; font-size: 18px">Product
											Name</th>
										<th style="font-weight: bolder; font-size: 18px">Product
											Price</th>
										<th style="font-weight: bolder; font-size: 18px">Quantity</th>
										<th style="font-weight: bolder; font-size: 18px">Order ID</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${page.content}">
										<tr>
											<td>${item.id}</td>
											<td><img
												src="/forUser/images/${item.product.image}" alt=""
												width=100px /></td>
											<td>${item.product.id}</td>
											<td>${item.product.name}</td>
											<td>$${item.product.price}</td>
											<td>${item.quantity }</td>
											<td>${item.order.id}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<%-- <hr />
				<div class="text-center">
					<a href="/admin/orderDetail?p=0" class="btn btn-primary">First</a>
					<a href="/admin/orderDetail?p=${page.number-1}"
						class="btn btn-primary">Previous</a> <a
						href="/admin/orderDetail?p=${page.number+1}"
						class="btn btn-primary">Next</a> <a
						href="/admin/orderDetail?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr /> --%>
						</div>
					</div>

				</div>
			</div>


		</div>
		<!-- Footer -->
		<footer class="small p-3 px-md-4 mt-auto">
			<div class="row justify-content-between">
				<div class="col-lg text-center text-lg-left mb-3 mb-lg-0">
					<ul class="list-dot list-inline mb-0">
						<li
							class="list-dot-item list-dot-item-not list-inline-item mr-lg-2"><a
							class="link-dark" href="#">FAQ</a></li>
						<li class="list-dot-item list-inline-item mr-lg-2"><a
							class="link-dark" href="#">Support</a></li>
						<li class="list-dot-item list-inline-item mr-lg-2"><a
							class="link-dark" href="#">Contact us</a></li>
					</ul>
				</div>

				<div class="col-lg text-center mb-3 mb-lg-0">
					<ul class="list-inline mb-0">
						<li class="list-inline-item mx-2"><a class="link-muted"
							href="#"><i class="gd-twitter-alt"></i></a></li>
						<li class="list-inline-item mx-2"><a class="link-muted"
							href="#"><i class="gd-facebook"></i></a></li>
						<li class="list-inline-item mx-2"><a class="link-muted"
							href="#"><i class="gd-github"></i></a></li>
					</ul>
				</div>

				<div class="col-lg text-center text-lg-right">&copy; 2019
					Graindashboard. All Rights Reserved.</div>
			</div>
		</footer>
		<!-- End Footer -->

	</div>
</main>
