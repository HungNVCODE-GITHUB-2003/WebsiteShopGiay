<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">
				<form:form name="qryform" id="qryform" action="/admin/category"
					class="" modelAttribute="item">
					<div class="card ">
						<div class="card-header">
							<!-- Breadcrumb -->
						<nav class="d-none d-md-block" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Admins</a></li>
								<li class="breadcrumb-item active" aria-current="page">All
									Category</li>
							</ol>
						</nav>
						<div class="mb-3 mb-md-4 d-flex justify-content-between">
							<div class="h3 mb-0">Account Control</div>
							<div class="h3 mb-0">
								<a href="/admin/category" class="btn btn-secondary float-right">Category
									List</a>
							</div>
						</div>
										
							<div class="bg-success ">${message}sdsdsd</div>
						</div>
						<div class="card-body">
							<div class="form-group">
								<form:input type="text" class="form-control" id="id" path="id"
									aria-describedby="idHid" placeholder="Category ID" />
								<small id="idHid" class="form-text text-muted">Category
									ID is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" id="name"
									path="name" aria-describedby="nameHid"
									placeholder="Category Name" />
								<small id="nameHid" class="form-text text-muted">Category
									name is invalid</small>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-secondary "
								formaction="/admin/category/create">Insert</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/category/update">Update</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/category/delete/${item.id}">Delete</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/categoryControl">Reset</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<!-- 
		Search
		<div class="row">
			<form >
				<div class="form-inline float-left">
					<label for="name">Name: &nbsp;</label> <input type="text"
						class="form-control" name="name" id="name"
						aria-describedby="naemHid" placeholder="">
					<button class="btn btn-outline-primary ml-2">Search</button>
				</div>
			</form>
		</div> -->

     
		

	</div>
</div>
<!-- End Page wrapper  -->


