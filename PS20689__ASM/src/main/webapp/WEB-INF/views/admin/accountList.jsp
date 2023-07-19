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
							<li class="breadcrumb-item active" aria-current="page">Account</li>

						</ol>
					</nav>

					<!-- End Breadcrumb -->

					<div class="mb-3 mb-md-4 d-flex justify-content-between">
						<div class="h3 mb-0">Account List</div>
						<div class="h3 mb-0">
							<a href="accountControl" class="btn btn-secondary float-right">Add
								New Account</a>
						</div>
					</div>


					<!-- Users -->
					<div class="table-responsive-xl">
						<table border="1" style="width: 100%"
							class="table text-nowrap mb-0">
							<thead>
								<tr style="text-align: center;">
									<th class="p-0 m-0" width="10%"
										style="font-weight: bolder; font-size: 18px">Photo</th>
									<th style="font-weight: bolder; font-size: 18px">Username</th>
									<th style="font-weight: bolder; font-size: 18px">Password</th>
									<th style="font-weight: bolder; font-size: 18px">Fullname</th>
									<th style="font-weight: bolder; font-size: 18px">Email</th>
									<th style="font-weight: bolder; font-size: 18px">Activated</th>
									<th style="font-weight: bolder; font-size: 18px">Admin</th>
									<th style="font-weight: bolder; font-size: 18px">Action</th>
								</tr>
							</thead>
							<%-- <c:forEach var="item" items="${items}">
                            <tbody>
                            <tr>
                                <td>${item.group.name}</td>
								<td>${item.sum}</td>
								<td>${item.count}</td>
                                
                            </tr>
                           </c:forEach>
                            </tbody> --%>
							<c:forEach var="item" items="${page.content}">
								<tr style="text-align: center;">
									<td class="px-0 m-0" width="10%"><img
										src="/forAdmin/images/${item.photo}" alt="" width="50%"
										class="img-fluid"></td>
									<td>${item.username}</td>
									<td>${item.password}</td>
									<td>${item.fullname}</td>
									<td>${item.email}</td>

									<td>${item.activated}</td>
									<td>${item.admin}</td>

									<td> 
									<a class='btn btn-dark btn-xs' style="font-size: 14px" href="account/edit/${item.username}"> 
									<span class="glyphicon glyphicon-edit"></span> Edit	</a> 
									<a href="account/delete/${item.username}" style="font-size: 14px" class="btn btn-dark btn-xs"> 
									<span class="glyphicon glyphicon-remove"></span> Delt
								</a>
								</td>
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
										class="page-link" href="/admin/account?p=0"
										aria-label="Previous"> <i
											class="gd-angle-left icon-text icon-text-xs d-inline-block">
										</i>
									</a></li>
									<li class="page-item d-none d-md-block"><a
										id="datatablePaginationPage0" class="page-link active"
										href="/admin/account?p=${page.number-1}" data-dt-page-to="0">Prev</a></li>

									<li class="page-item d-none d-md-block"><a
										id="datatablePagination2" class="page-link"
										href="/admin/account?p=${page.number+1}" data-dt-page-to="2">Next</a></li>
									<li class="page-item"><a id="datatablePaginationNext"
										class="page-link" href="/admin/account?p=${page.totalPages-1}"
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



