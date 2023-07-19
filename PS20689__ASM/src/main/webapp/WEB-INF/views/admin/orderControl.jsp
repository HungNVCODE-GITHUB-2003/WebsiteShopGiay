<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">
			<div class="card mb-3 mb-md-4">

				<div class="card-body">
					<!-- Breadcrumb -->
					<nav class="d-none d-md-block" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Admins</a></li>
							<li class="breadcrumb-item active" aria-current="page">Product</li>
							
						</ol>
					</nav>
					
					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">Product List</div>
						<div class="h3 mb-0"><a href="productControl" class="btn btn-success float-right">Add
						New Product</a></div>
					</div>


					<!-- Users -->
					<div class="table-responsive-xl">
						<table border="1" style="width: 100%"
							class="table text-nowrap mb-0">
							<thead>
								<tr>
									<th style="font-weight: bolder; font-size: 18px">No.</th>
									<th style="font-weight: bolder; font-size: 18px">Product Image</th>
									<th style="font-weight: bolder; font-size: 18px">Product ID</th>
									<th style="font-weight: bolder; font-size: 18px">Product Name</th>
									<th style="font-weight: bolder; font-size: 18px">Product Price</th>
									<th style="font-weight: bolder; font-size: 18px">Quantity</th>
								</tr>
							</thead>
							
							<c:set var="i" value="0"/>
							<c:forEach var="item" items="${topList.content}">
								<tr>
									<td>${i = i + 1 }</td>
									<td>
										<img src="/forUser/img/products/${item.product.image}" alt="" width="20%">
									</td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td>${item.product.price}</td>
									<td>${item.sum }</td>
								</tr>
							</c:forEach>
						</table>
						<div
							class="card-footer d-block d-md-flex align-items-center d-print-none">
							<div class="d-flex mb-2 mb-md-0">
								<p>Show ${page.number*9 + 1 } - ${page.number*9 + page.numberOfElements }
									Of ${page.totalElements } Product</p>
									<p></p>
							</div>

							<nav class="d-flex ml-md-auto d-print-none"
								aria-label="Pagination">
								<ul
									class="pagination justify-content-end font-weight-semi-bold mb-0">
									<li class="page-item"><a id="datatablePaginationPrev"
										class="page-link" href="/admin/product?p=0"
										aria-label="Previous"> <i
											class="gd-angle-left icon-text icon-text-xs d-inline-block">
										</i>
									</a></li>
									<li class="page-item d-none d-md-block"><a
										id="datatablePaginationPage0" class="page-link active"
										href="/admin/product?p=${page.number-1}" data-dt-page-to="0">Prev</a></li>

									<li class="page-item d-none d-md-block"><a
										id="datatablePagination2" class="page-link"
										href="/admin/product?p=${page.number+1}" data-dt-page-to="2">Next</a></li>
									<li class="page-item"><a id="datatablePaginationNext"
										class="page-link" href="/admin/product?p=${page.totalPages-1}"
										aria-label="Next"><i
											class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
									</li>
								</ul>
							</nav>
						</div>


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



