<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<title>Aviato | E-commerce template</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="plugins/revolution-slider/revolution/css/navigation.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">

</head>

<body id="body">
	<!-- Start Top Header Bar -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
						<i class="tf-ion-ios-telephone"></i> <span>0129-
							12323-123123</span>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="index.html"> <!-- replace logo here --> <svg
								width="135px" height="29px" viewBox="0 0 155 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group"
									transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325">AVIATO</tspan>
						            </text>
						        </g>
						    </g>
						</svg>
						</a>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Cart -->
					<ul class="top-menu text-right list-inline">
						<li class="dropdown cart-nav dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-android-cart"></i>Cart</a>
							<div class="dropdown-menu cart-dropdown">
								<!-- Cart Item -->
								<c:forEach var='test' items='${now.cartitemmap}'>
								<div class="media">
									<a class="pull-left" href="#"> 
									<img class="media-object"src="images/shop/cart/cart-2.jpg" alt="image" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="">${test.value.productBean.title}</a>
										</h4>
										<div class="cart-price">
											<span>${test.value.quantity} x</span>
										<span>${test.value.price}</span>
										</div>
										<h5>
											<strong>$${test.value.quantity*test.value.price}</strong>
										</h5>
									</div>
									<a href="#" class="remove"><i class="tf-ion-close"></i></a>
									<c:set value="${sum +test.value.quantity*test.value.price}"
									var="sum" />
								</div>
									</c:forEach>
								<!-- / Cart Item -->
								<div class="cart-summary">
									<span>Total</span> <span class="total-price">${sum}</span>
								</div>
								<ul class="text-center cart-buttons">
									<li><a href="" class="btn btn-small">View Cart</a></li>
									<li><a href="" class="btn btn-small btn-solid-border">Checkout</a></li>
								</ul>
							</div></li>
						<!-- / Cart -->

						<!-- Search -->
						<li class="dropdown search dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i>
								Search</a>
							<ul class="dropdown-menu search-dropdown">
								<li><form action="post">
										<input type="search" class="form-control"
											placeholder="Search...">
									</form></li>
							</ul></li>
						<!-- / Search -->

						<!-- Languages -->
						<li class="commonSelect"><select class="form-control">
								<option>EN</option>
								<option>DE</option>
								<option>FR</option>
								<option>ES</option>
						</select></li>
						<!-- / Languages -->

					</ul>
					<!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Top Header Bar -->


	<!-- Main Menu Section -->
	<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">Main Menu</h2>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

				</div>
				<!-- / .navbar-header -->

				<!-- Navbar Links -->
				<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">

						<!-- Home -->
						<li class="dropdown "><a href="index.html">Home</a></li>
						<!-- / Home -->


						<!-- Elements -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Shop <span
								class="tf-ion-ios-arrow-down"></span></a>
							<div class="dropdown-menu">
								<div class="row">

									<!-- Basic -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">Pages</li>
											<li role="separator" class="divider"></li>
											<li><a href="shop.html">Shop</a></li>
											<li><a href="checkout.html">Checkout</a></li>
											<li><a href="cart.html">Cart</a></li>
											<li><a href="pricing.html">Pricing</a></li>
											<li><a href="confirmation.html">Confirmation</a></li>

										</ul>
									</div>

									<!-- Layout -->
									<div class="col-lg-6 col-md-6 mb-sm-3">
										<ul>
											<li class="dropdown-header">Layout</li>
											<li role="separator" class="divider"></li>
											<li><a href="product-single.html">Product Details</a></li>
											<li><a href="shop-sidebar.html">Shop With Sidebar</a></li>

										</ul>
									</div>

								</div>
								<!-- / .row -->
							</div> <!-- / .dropdown-menu --></li>
						<!-- / Elements -->


						<!-- Pages -->
						<li class="dropdown full-width dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Pages <span
								class="tf-ion-ios-arrow-down"></span></a>
							<div class="dropdown-menu">
								<div class="row">

									<!-- Introduction -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">Introduction</li>
											<li role="separator" class="divider"></li>
											<li><a href="contact.html">Contact Us</a></li>
											<li><a href="about.html">About Us</a></li>
											<li><a href="404.html">404 Page</a></li>
											<li><a href="coming-soon.html">Coming Soon</a></li>
											<li><a href="faq.html">FAQ</a></li>
										</ul>
									</div>

									<!-- Contact -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">Dashboard</li>
											<li role="separator" class="divider"></li>
											<li><a href="dashboard.html">User Interface</a></li>
											<li><a href="order.html">Orders</a></li>
											<li><a href="address.html">Address</a></li>
											<li><a href="profile-details.html">Profile Details</a></li>
										</ul>
									</div>

									<!-- Utility -->
									<div class="col-sm-3 col-xs-12">
										<ul>
											<li class="dropdown-header">Utility</li>
											<li role="separator" class="divider"></li>
											<li><a href="login.html">Login Page</a></li>
											<li><a href="signin.html">Signin Page</a></li>
											<li><a href="forget-password.html">Forget Password</a></li>
										</ul>
									</div>

									<!-- Mega Menu -->
									<div class="col-sm-3 col-xs-12">
										<a href="shop.html"> <img class="img-responsive"
											src="images/shop/header-img.jpg" alt="menu image" />
										</a>
									</div>
								</div>
								<!-- / .row -->
							</div> <!-- / .dropdown-menu --></li>
						<!-- / Pages -->



						<!-- Blog -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Blog <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
								<li><a href="blog-right-sidebar.html">Blog Right
										Sidebar</a></li>
								<li><a href="blog-full-width.html">Blog Full Width</a></li>
								<li><a href="blog-grid.html">Blog 2 Columns</a></li>
								<li><a href="blog-single.html">Blog Single</a></li>
							</ul></li>
						<!-- / Blog -->

						<!-- Shop -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">Elements <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">Typography</a></li>
								<li><a href="buttons.html">Buttons</a></li>
								<li><a href="alerts.html">Alerts</a></li>
							</ul></li>
						<!-- / Blog -->
					</ul>
					<!-- / .nav .navbar-nav -->

				</div>
				<!--/.navbar-collapse -->
			</div>
			<!-- / .container -->
		</nav>
	</section>
	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">Checkout</h1>
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active">checkout</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="page-wrapper">
		<form method="post" action="<c:url value='/checkout'/>">
			<div class="checkout shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<div class="block billing-details">
								<h4 class="widget-title">寄送明細(宅配)</h4>
								<form class="checkout-form">
									<div class="form-group">
										<label for="full_name">姓名</label> <input type="text"
											class="form-control" id="full_name" placeholder="">
									</div>
									<div class="form-group">
										<label for="user_address">地址</label> <input type="text"
											class="form-control" id="user_address" placeholder="">
									</div>
									<div class="form-group">
										<label for="user_address">電話</label> <input type="text"
											class="form-control" id="user_address" placeholder="">
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-4">
							<div class="product-checkout-details">
								<div class="block">
									<h4 class="widget-title">訂單明細</h4>
									<c:set value="0" var="sum" />
									<div class="media product-card">
										<c:forEach var='test' items='${now.cartitemmap}'>
											<a class="pull-left" href="product-single.html"> <img
												class="media-object" src="images/shop/cart-1.jpg"
												alt="Image" />
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													<a href="">${test.value.productBean.title}</a>
												</h4>
												<p class="price">${test.value.quantity}*${test.value.price}</p>
												<span class="remove">刪除</span>
											</div>
											<c:set value="${sum +test.value.quantity*test.value.price}"
												var="sum" />
										</c:forEach>
									</div>

									<div class="discount-code">
										<p>
											折扣券? <a data-toggle="modal" data-target="#coupon-modal"
												href="">按這</a>
										</p>
									</div>
									<ul class="summary-prices">
										<li><span>Subtotal:</span> <span class="price">${sum}</span>
										</li>
										<li><span>Shipping:</span> <span>120</span></li>
									</ul>
									<div class="summary-total">
										<span>Total</span> <span>${sum+120}</span>
									</div>
									<br>
								</div>
							</div>
						</div>
						<a href="<spring:url value='<!--綠界金流-->'/>"
							class="btn btn-main pull-right" style="margin-top: 10px"> <span>結帳</span>
						</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="coupon-modal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<form>
						<div class="form-group">
							<input class="form-control" type="text"
								placeholder="Enter Coupon Code">
						</div>
						<button type="submit" class="btn btn-main">Apply Coupon</button>
					</form>
				</div>
			</div>
		</div>
		<div style="float: left;">
			<a href="<spring:url value='/nocart' />"
				class="btn btn-main pull-right" style="margin-top: 10px"> <span>繼續購物</span>
			</a>
		</div>
	</div>

	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href=""> <i class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href=""> <i class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu">
						<li><a href="">CONTACT</a></li>
						<li><a href="">SHIPPING</a></li>
						<li><a href="">TERMS OF SERVICE</a></li>
						<li><a href="">PRIVACY POLICY</a></li>
					</ul>
					<p class="copyright-text">Powered by Bootstrap</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script src="plugins/instafeed-js/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution-slider/assets/warning.js"></script>



	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="js/script.js"></script>



</body>
</html>