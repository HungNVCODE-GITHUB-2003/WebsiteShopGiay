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
							<li class="breadcrumb-item active" aria-current="page">Top Customer</li>
							
						</ol>
					</nav>
					
					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">Top Customer List</div>
						
					</div>


					<!-- Users -->
					<div class="table-responsive-xl">
						<table border="1" style="width: 100%"
							class="table text-nowrap mb-0">
							<thead>
								<tr style="text-align: center;">
									<th style="font-weight: bolder; font-size: 18px">No.</th>
									<th style="font-weight: bolder; font-size: 18px" >Customer Image</th>
									<th style="font-weight: bolder; font-size: 18px">Customer ID</th>
									<th style="font-weight: bolder; font-size: 18px">Customer Name</th>
									<th style="font-weight: bolder; font-size: 18px">Customer Email</th>
								</tr>
							</thead>
							
							<c:set var="i" value="0"/>
							<c:forEach var="item" items="${topCustomer}">
								<tr style="text-align: center;">
									<td>${i = i + 1 }</td>
									<td  class ="px-0 m-0"  width="10%">
										<img src="/forAdmin/images/${item.account.photo}" alt="" width="50%">
									</td>
									<td>${item.account.username}</td>
									<td>${item.account.fullname}</td>
									<td>${item.account.email}</td>
								</tr>
							</c:forEach>
						</table>
				


					</div>
					<!-- End Users -->
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



