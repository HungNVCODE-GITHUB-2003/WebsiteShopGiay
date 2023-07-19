<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<main class="main">
	<div class="content">
		<div class="py-4 px-3 px-md-4">
				<form:form name="qryform" id="qryform" action="/admin/account"
					class="" modelAttribute="item">
					<div class="card ">
						<div class="card-header">
							<!-- Breadcrumb -->
						<nav class="d-none d-md-block" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Admins</a></li>
								<li class="breadcrumb-item active" aria-current="page">All
									Account</li>
							</ol>
						</nav>
						<div class="mb-3 mb-md-4 d-flex justify-content-between">
							<div class="h3 mb-0">Account Control</div>
							<div class="h3 mb-0">
								<a href="/admin/account" class="btn btn-secondary float-right">Account
									List</a>
							</div>
						</div>
						
						<div class="bg-success text-light ">${message }</div>
							<div class="bg-success text-light ">${message }</div>
						</div>
						<div class="card-body">
							<div class="form-group row">
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="username"
											path="username" aria-describedby="usHid"
											placeholder="Username" />
										<small id="usHid" class="form-text text-muted">Username
											ID is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="password" class="form-control" id="password"
											path="password" aria-describedby="passHid"
											placeholder="Password" />
										<small id="passHid" class="form-text text-muted">Password
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="file" class="form-control" id="photo"
											path="photo" aria-describedby="photoHid" placeholder="photo" />
										<small id="photoHid" class="form-text text-muted">photo
											is invalid</small>
									</div>
									<div class="form-group">
										Activity:
										<form:radiobuttons class="mx-2" path="activated"
											items="${activateds }" delimiter="" />
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<form:input type="text" class="form-control" id="fullname"
											path="fullname" aria-describedby="fullnameHid"
											placeholder="fullname" />
										<small id="fullnameHid" class="form-text text-muted">Fullname
											is invalid</small>
									</div>
									<div class="form-group">
										<form:input type="email" class="form-control" id="email"
											path="email" aria-describedby="emailHid" placeholder="email" />
										<small id="emailHid" class="form-text text-muted">Email
											is invalid</small>
									</div>
									<div class="form-group">
										Role:
										<form:radiobuttons class="mx-2" path="admin"
											items="${admins }" delimiter="" />
									</div>
								</div>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/account/create">Insert</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/account/update">Update</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/account/delete/${item.username}">Delete</button>
							<button type="submit" class="btn btn-secondary"
								formaction="/admin/accountControl">Reset</button>
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


