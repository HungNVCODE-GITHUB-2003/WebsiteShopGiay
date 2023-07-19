<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">
			<div class="card mb-3 mb-md-4">

				<div class="card-body">
					<!-- Breadcrumb -->
					<nav class="d-none d-md-block" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Admins</a></li>
							<li class="breadcrumb-item active" aria-current="page">Report Order By Date</li>

						</ol>
					</nav>

					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">Report Order By Date List</div>

					</div>
					<div class="row">
						<div class="col-md-12 ">
							<div class="row px-3 py-1">
								<div class="col-md-4 alert alert-danger">
									<form action="/admin/reportOrderByDate" method="post">
										<div class="form-group">
											Form Date:<input type="text" class="form-control"
												name="firstDate" id="firstDate"
												aria-describedby="firstDateHid" placeholder="MM-dd-yyyy" />
										</div>
										<div class="form-group">
											To Date: <input type="text" class="form-control"
												name="lastDate" id="lastDate" aria-describedby="lastDateHid"
												placeholder="MM-dd-yyyy" />
										</div>
										<button type="submit" class="btn btn-primary ">Search</button>
									</form>
								</div>
								<div class="col-md-4 alert alert-danger offset-md-4">
									<h3 class="text-center">Order</h3>
									<h5>
										From:
										<fmt:formatDate pattern="MM-dd-yyyy" value="${firstDate }" />
									</h5>
									<h5>
										To:
										<fmt:formatDate pattern="MM-dd-yyyy" value="${lastDate }" />
									</h5>
									<h5>Total: ${page.totalElements }</h5>
								</div>
							</div>

							<table class="table text-center">
								<thead>
									<tr>
										<th style="font-weight: bolder; font-size: 18px">No.</th>
										<th style="font-weight: bolder; font-size: 18px">Order ID</th>
										<th style="font-weight: bolder; font-size: 18px">Address</th>
										<th style="font-weight: bolder; font-size: 18px">Create
											Date</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="i" value="0" />
									<c:forEach var="item" items="${page.content}">
										<tr>
											<td>${i =i+1}</td>
											<td>${item.id }</td>
											<td>${item.address }</td>
											<td>${item.createDate }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
