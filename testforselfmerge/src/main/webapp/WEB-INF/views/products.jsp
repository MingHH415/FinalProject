<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html class="no-js">
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
										<a class="pull-left" href="#"> <img class="media-object"
											src="<c:url value='/getPicture/${test.value.productBean.productId}' />"
											alt="image" />
										</a>
										<div class="media-body">
											<h4 class="media-heading">
												<a href="">${test.value.productBean.title}</a>
											</h4>
											<div class="cart-price">
												<span>${test.value.quantity} x</span> <span>${test.value.price}</span>
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
									<li><a href="<spring:url value='/viewtocart' />"
										class="btn btn-small">View Cart</a></li>
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
							</ul></li>
						<!-- / Search -->



					</ul>
					<!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>


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

						<!-- Home首頁 -->
						<li class="dropdown "><a href="index2.html">Home</a></li>
						<!-- / Home -->


						<!-- 商品 -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">商品 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li class="dropdown-header">商品</li>
								<li role="separator" class="divider"></li>
								<li><a href="products">全部商品</a></li>
								<li><a href="#要放JSP網址">廠牌搜索</a></li>
								<li><a href="#要放JSP網址">比較商品</a></li>
								<li><a href="#要放JSP網址">進階搜索</a></li>
							</ul></li>
						<!-- / 商品 -->

						<!-- 訂單 -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">訂單 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li class="dropdown-header">訂單</li>
								<li role="separator" class="divider"></li>
								<li><a href="#要放JSP網址">訂單總攬 </a></li>
								<li><a href="<spring:url value='/viewtocart' />">購物車 </a></li>
							</ul></li>
						<!-- / 訂單 -->

						<!-- 帳號 -->
						<li class="dropdown dropdown-slide"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="350" role="button"
							aria-haspopup="true" aria-expanded="false">帳號 <span
								class="tf-ion-ios-arrow-down"></span></a>
							<ul class="dropdown-menu">
								<li class="dropdown-header">帳號</li>
								<li role="separator" class="divider"></li>
								<li><a href="#要放JSP網址">帳號資訊</a></li>
								<li><a href="#要放JSP網址">帳號修改</a></li>
								<li><a href="#要放JSP網址">申請廠商</a></li>
							</ul></li>
						<li class="dropdown "><a href="index.html">回產品後台</a></li>
						<!-- / 帳號 -->

					</ul>
					<!--/ .nav .navbar-nav -->

				</div>
				<!--/.navbar-collapse -->
			</div>
			<!--/ .container -->
		</nav>
	</section>

	<section class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content">
						<h1 class="page-name">Shop</h1>
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active">shop</li>
					<li class="active">
						<c:forEach var='category' items='${categoryList}'>
								<a href='${category}'>${category}&nbsp;&nbsp;&nbsp;/</a>
							</c:forEach>
							</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- 以下為商品開始 -->





	<section class="products section">

		<div class="container">
			<div class="row">
				<c:forEach var='product' items='${products}'>
					<div class="col-md-4">
						<div class="product-item">
							<div class="product-thumb">
								<span class="bage">Sale</span>
								<!-- 						商品 -->
								<img class="img-responsive"
									src="<c:url value='/getPicture/${product.productId}'/>"
									style='width: 360px; height: 420px' alt="product-img" />
								<div class="preview-meta">
									<ul>
										<li>
											<!-- 								商品預覽 --> <span data-toggle="modal"
											data-target="#product-modal"> <i
												class="tf-ion-ios-search-strong"></i>
										</span> <!-- 								/商品預覽 -->
										</li>
										<li><a href="#愛心"><i class="tf-ion-ios-heart"></i></a></li>

									</ul>
								</div>
							</div>
							<div class="product-content">
								<h4>
									<a
										href="<spring:url value='/product?id=${product.productId}'/>">${product.title}</a>

								</h4>
								<p class="price">${product.price}</p>
								<form method='POST' action="<c:url value='/addtocart'/>">
									<input type='hidden' name='price'
										value='${product.price*product.discount}' /> <input
										type='hidden' name='productId' value='${product.productId}' />
									<input type="hidden" name="quantity" value='1' /> <input
										type="hidden" name="position" value='0' /> <input
										type='submit' value='加入購物車' class="tf-ion-android-car">
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</section>
	<!-- 以上商品結束 -->
	<!-- Modal -->
	<div class="modal product-modal fade" id="product-modal">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<i class="tf-ion-close"></i>
		</button>
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-8 col-sm-6 col-xs-12">
							<div class="modal-image">
								<img class="img-responsive"
									src="images/shop/products/modal-product.jpg" alt="product-img" />
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-xs-12">
							<div class="product-short-details">
								<h2 class="product-title">GM Pendant, Basalt Grey</h2>
								<p class="product-price">$200</p>
								<p class="product-short-description">Lorem ipsum dolor sit
									amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo
									laborum numquam rem aut officia dicta cumque.</p>
								<a href="cart.html" class="btn btn-main">Add To Cart</a> <a
									href="product-single.html" class="btn btn-transparent">View
									Product Details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->

	</div>
	</div>
	</section>
	<section style="text-align: center">
		<a href="<spring:url value='//products'/>" class="btn btn-primary">
			<span class="glyphicon-info-sigh glyphicon"></span>1
		</a> <a href="<spring:url value='/products1'/>" class="btn btn-primary">
			<span class="glyphicon-info-sigh glyphicon"></span>2
		</a> <a href="<spring:url value='/productsall'/>" class="btn btn-primary">
			<span class="glyphicon-info-sigh glyphicon"></span>全頁搜尋
		</a>
	</section>



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
