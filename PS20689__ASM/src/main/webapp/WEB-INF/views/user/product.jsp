<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="colorlib-loader"></div>

<div id="page" class="product_section layout_padding">


	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="bread">
						<span><a href="index">Home</a></span> / <span>Men</span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="breadcrumbs-two">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="breadcrumbs-img"
						style="background-image: url(/forUser/images/cover-img-1.jpg);">
						<h2>Women's</h2>
					</div>
					<div class="menu text-center">
						<p>
							<a href="#">New Arrivals</a> <a href="#">Best Sellers</a> <a
								href="#">Extended Widths</a> <a href="#">Sale</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="colorlib-featured">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 text-center">
					<div class="featured">
						<div class="featured-img featured-img-2"
							style="background-image: url(/forUser/images/img_bg_2.jpg);">
							<h2>Casuals</h2>
							<p>
								<a href="#" class="btn btn-primary btn-lg">Shop now</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 text-center">
					<div class="featured">
						<div class="featured-img featured-img-2"
							style="background-image: url(/forUser/images/img_bg_1.jpg);">
							<h2>Dress</h2>
							<p>
								<a href="#" class="btn btn-primary btn-lg">Shop now</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 text-center">
					<div class="featured">
						<div class="featured-img featured-img-2"
							style="background-image: url(/forUser/images/1012.jpg);">
							<h2>Sports</h2>
							<p>
								<a href="#" class="btn btn-primary btn-lg">Shop now</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="colorlib-product">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-xl-3">
					<div class="row">
						<div class="col-sm-12">
							<div class="side border mb-1">
								<h2>Brand</h2>
								<ul>
									<li><a href="/user/brand?field1=1000">Nike</a></li>
									<li><a href="/user/brand?field1=1001">Adidas</a></li>
									<li><a href="/user/brand?field1=1002">Jordan</a></li>
									<li><a href="/user/brand?field1=1003">New Balance</a></li>
									<li><a href="/user/brand?field1=1004">Converse</a></li>
									<li><a href="/user/brand?field1=1005">MLB</a></li>
									<li><a href="/user/brand?field1=1006">Valentino</a></li>
									<li><a href="/user/brand?field1=1007">Christian Louboutin</a></li>
									<li><a href="/user/brand?field1=1000">Binh minh</a></li>
									<li><a href="/user/brand?field1=1000">Puma</a></li>
									<li><a href="/user/brand?field1=1000">Supreme</a></li>
								</ul>
							</div>
						</div>
						
						<div class="col-sm-12">
						
						<input type="hidden" name="name" value="${name}">
						<div class="side border mb-1">
							<h2>Mức giá</h2>
        				<div class="select-range">
        					<select name="range" class="form-control">
        						<option value="">Tất cả giá</option>
								<option value="duoi-2-trieu">Dưới 2 triệu</option>
								<option value="2-trieu-den-4-trieu">2 triệu đến 4 triệu</option>
								<option value="4-trieu-den-6-trieu">4 triệu - 6 triệu</option>
								<option value="6-trieu-den-10-trieu">6 triệu - 10 triệu</option>
								<option value="tren-10-trieu">Trên 10 triệu</option>					
        					</select>
        					
        				</div>   		
							</div>
							
						</div>
						
						<div class="col-sm-12">
							<div class="side border mb-1">
								<h3>Size/Width</h3>
								<div class="block-26 mb-2">
									<h4>Size</h4>
									<ul>
										<li><a href="https://censor.vn/huong-dan-chon-size/">39</a></li>
										<li><a href="#">40</a></li>
										<li><a href="#">41</a></li>
										<li><a href="#">42</a></li>
										<li><a href="#">43</a></li>
										<li><a href="#">44</a></li>
										<li><a href="#">45</a></li>
										<li><a href="#">46</a></li>
										<li><a href="#">47</a></li>
										<li><a href="#">48</a></li>																		
									</ul>
								</div>
								
							</div>
						</div>
						<!-- <div class="col-sm-12">
							<div class="side border mb-1">
								<h3>Style</h3>
								<ul>
									<li><a href="#">Slip Ons</a></li>
									<li><a href="#">Boots</a></li>
									<li><a href="#">Sandals</a></li>
									<li><a href="#">Lace Ups</a></li>
									<li><a href="#">Oxfords</a></li>
								</ul>
							</div>
						</div> -->

						<div class="col-sm-12">
							<div class="side border mb-1">
								<h3>Money</h3>
								<div class="filter-widget">
									<h4 class="fw-title">Price</h4>
									<form action="/user/price" method="post">
										<div class="filter-range-wrap">
											<div class="range-slider">
												<div class="price-input">

													<input type="text" id="minamount" name="min"> <input
														type="text" id="maxamount" name="max">
												</div>
											</div>
											<div
												class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
												data-min="0" data-max="10000">
												<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
												<span tabindex="0"
													class="ui-slider-handle ui-corner-all ui-state-default"></span>
												<span tabindex="0"
													class="ui-slider-handle ui-corner-all ui-state-default"></span>
											</div>
										</div>
										<button class="filter-btn" style="border: none">Filter</button>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-lg-9 col-xl-9">




					<div class="row row-pb-md">


						<div class="col-12 pb-1">
							<div
								class="d-flex align-items-center justify-content-between mb-4">
								<form action="/user/search" method="post" class="search-wrap">
									<div class="input-group">
										<input type="search" class="form-control search"
											name="keywords" value="${keywords}" placeholder="Keywords?">
										<button class="btn btn-primary submit-search text-center"
											type="submit">
											<i class="icon-search"></i>
										</button>
									</div>
								</form>
								
								<%-- <form action="/user/list" method="post" class="search-wrap">
									<div class="input-group">
										<input type="search" class="form-control search"
											name="name" placeholder="Category Name?">
										<button class="btn btn-primary submit-search text-center"
											type="submit">
											<i class="icon-search"></i>
										</button>
									</div>
								</form> --%>
								
								<div class="col-lg-5 col-md-5 text-right">
							<p>Show ${page.number*9 + 1 } - ${page.number*9 + page.numberOfElements } Of ${page.totalElements } Product</p>
						</div>
							</div>
						</div>

						<c:forEach var="item" items="${page.content}">

							<div class="col-lg-4 mb-4 text-center" >

								<div class="product-entry border" >
									<div class="option_container">
										<div class="options">

											<a class="option1" href="/user/cart/add/${item.id}"> Add
												To Cart </a> 
												
																															
												<a
												class="option2"
												href="/user/product_detail/detail/${item.id}""> + Quick
												View </a>

										</div>
									</div>
									<a href="#" class="prod-img py-3"> <img
										src="/forUser/images/${item.image}" class="img-fluid"
										alt="" style="with: 120px;height:100px">
									</a>
									<div class="desc">
										<h2>
											<a href="#">${item.name}</a>
										</h2>
										<span style="color: red;" class="price">$${item.price}</span>

									</div>
								</div>

							</div>


						</c:forEach>

						<%-- <ul>
							<li>Số thực thể hiện tại: ${page.numberOfElements}</li>
							<li>Trang số: ${page.number}</li>
							<li>Kích thước trang: ${page.size}</li>
							<li>Tổng số thực thể: ${page.totalElements}</li>
							<li>Tổng số trang: ${page.totalPages}</li>
						</ul> --%>

						<div class="w-100"></div>

					</div>
					<div class="row">
						<div class="col-md-12 text-center">
							<div class="block-27">
								<ul>
									<li><a href="/user/product?p=0"><i
											class="ion-ios-arrow-back"></i></a></li>
									<li class="active"><span><a
											href="/user/product?p=${0}">1</a></span></li>
									<li><a href="/user/product?p=${1}">2</a></li>
									<li><a href="/user/product?p=${2}">3</a></li>
									<li><a href="/user/product?p=${3}">4</a></li>
									<li><a href="/user/product?p=${4}">5</a></li>
									<li><a href="/user/product?p=${5}">6</a></li>
									<li><a href="/user/product?p=${page.totalPages-1}"><i
											class="ion-ios-arrow-forward"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="colorlib-partner">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
					<h2>Trusted Partners</h2>
				</div>
			</div>
			<div class="row">
				<div class="col partner-col text-center">
					<img src="/forUser/images/brand-1.jpg" class="img-fluid"
						alt="Free html4 bootstrap 4 template">
				</div>
				<div class="col partner-col text-center">
					<img src="/forUser/images/brand-2.jpg" class="img-fluid"
						alt="Free html4 bootstrap 4 template">
				</div>
				<div class="col partner-col text-center">
					<img src="/forUser/images/brand-3.jpg" class="img-fluid"
						alt="Free html4 bootstrap 4 template">
				</div>
				<div class="col partner-col text-center">
					<img src="/forUser/images/brand-4.jpg" class="img-fluid"
						alt="Free html4 bootstrap 4 template">
				</div>
				<div class="col partner-col text-center">
					<img src="/forUser/images/brand-5.jpg" class="img-fluid"
						alt="Free html4 bootstrap 4 template">
				</div>
			</div>
		</div>
	</div>



</div>

<div class="gototop js-top">
	<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>
</div>
