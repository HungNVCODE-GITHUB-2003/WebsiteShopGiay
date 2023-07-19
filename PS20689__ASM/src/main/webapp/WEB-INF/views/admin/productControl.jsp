<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">

			<form:form name="qryform" id="qryform" action="/admin/product"
				class="px-3" modelAttribute="item">
				<div class="card mb-3 mb-md-4">
					<div class="card-header">
						<!-- Breadcrumb -->
						<nav class="d-none d-md-block" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Admins</a></li>
								<li class="breadcrumb-item active" aria-current="page">All
									Admins</li>
							</ol>
						</nav>
						<div class="mb-3 mb-md-4 d-flex justify-content-between">
							<div class="h3 mb-0">Product Control</div>
							<div class="h3 mb-0">
								<a href="/admin/product" class="btn btn-secondary float-right">Product
									List</a>
							</div>
						</div>
						<div class="bg-success text-light px-3">${message }</div>
					</div>
					<div class="card-body">







						<div class="col row">
							<div class="col-6">
								<div class="form-group">
									<form:input type="text" class="form-control" id="id" path="id"
										disabled="true" aria-describedby="usHid"
										placeholder="Product ID" />
									<small id="usHid" class="form-text text-muted">Product
										ID is invalid</small>
								</div>
								<div class="form-group">
									<form:input type="name" class="form-control" id="name"
										path="name" aria-describedby="nameHid"
										placeholder="Product Name" />
									<small id="nameHid" class="form-text text-muted">Product
										Name is invalid</small>
								</div>
								<div class="form-group">
									<form:input type="number" class="form-control" id="price"
										path="price" aria-describedby="priceHid" placeholder="Price" />
									<small id="priceHid" class="form-text text-muted">Price
										is invalid</small>
								</div>
								<div class="form-group">
									<form:input type="file" class="form-control" id="image"
										path="image" aria-describedby="imageHid" placeholder="image" />
									<small id="imageHid" class="form-text text-muted">Image
										is invalid</small>
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<form:input type="date" class="form-control" id="createDate"
										disabled="true" path="createDate"
										aria-describedby="createDateHid" placeholder="createDate" />
									<small id="createDateHid" class="form-text text-muted">Create
										Date is invalid</small>
								</div>
								<div class="form-group ">
									Category:
									<form:select path="category" cssClass="form-control">
										<form:options items="${categories}" itemLabel="name" />
									</form:select>
								</div>
								<div class="form-group ">
									Available: <br />
									<form:radiobuttons class="mx-3 " path="available"
										items="${availables }" delimiter="" />
								</div>
							</div>
						</div>








						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-secondary "
								formaction="/admin/product/create">Insert</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/product/update">Update</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/product/delete/${item.id}">Delete</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/productControl">Reset</button>
						</div>
					</div>
			</form:form>

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




