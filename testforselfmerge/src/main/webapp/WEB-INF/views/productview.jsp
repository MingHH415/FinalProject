<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<div style="float: left;">

		<%-- 			<p>產品名稱: ${product.author}</p> --%>

		<img width='400' height='350'
			src="<c:url value='/getPicture/${product.productId}'/>" />
			<img width='400' height='350'
			src="/images/kitty.jpg" />
	</div>
	<div class="col-md-7">
		<div class="single-product-details">
			<h3>${product.title}</h3>
			<p class="product-price">$300</p>

			<p class="product-description mt-20">

				放大鏡頭，探索夜晚的神秘、觀察在樹頂翱翔的老鷹或探究水晶的精緻細節。把握當下最美好的時刻，打造未來的願景。HUAWEI P30 Pro
				正寫下智慧型手機攝影的全新巔峰。</p>
			<p>HUAWEI P30 Pro
				靈感源自無限蒼穹，臨摹變幻無窮的光線色彩及遼闊空間。邀您見證瑰麗拂曉的赤茶橘、赤日當空的天空之境、想像奔馳的神秘極光與耀眼黑夜之美。</p>
			<div class="color-swatches">
				<span>color:</span>
				<ul>
					<li><a href="" class="swatch-violet"></a></li>
					<li><a href="" class="swatch-black"></a></li>
					<li><a href="" class="swatch-cream"></a></li>
				</ul>
			</div>
			<div class="product-size">
				<span>Size:</span> <select class="form-control">
					<option>S</option>
					<option>M</option>
					<option>L</option>
					<option>XL</option>
				</select>
			</div>
			<div class="product-quantity">
				<span>Quantity:</span>
				<div class="product-quantity-slider">
					<input id="product-quantity" type="text" value="0"
						name="product-quantity">
				</div>
			</div>
			<div class="product-category">
				<span>Categories:</span>
				<ul>
					<li>	<a href="<spring:url value='/products' />"> 回產品頁</a></li>
<!-- 					<li><a href="#">Soap</a></li> -->
				</ul>
			</div>
			<a href="cart.html" class="btn btn-main mt-20">Add To Cart</a>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-12">
			<div class="tabCommon mt-20">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#details"
						aria-expanded="true">Details</a></li>
					<li class=""><a data-toggle="tab" href="#reviews"
						aria-expanded="false">Reviews (3)</a></li>
				</ul>
				<div class="tab-content patternbg">
					<div id="details" class="tab-pane fade active in">
						<h4>Product Description</h4>
						<p>
							放大鏡頭，探索夜晚的神秘、觀察在樹頂翱翔的老鷹或探究水晶的精緻細節。把握當下最美好的時刻，打造未來的願景。HUAWEI P30
							Pro 正寫下智慧型手機攝影的全新巔峰。</p>
						<p>
							AMOLED彩色螢幕搭配2.5D弧面玻璃，與旗艦手機採用相同顯示技術，在陽光下顯示清晰可見。0.95吋螢幕，可顯示45個中文字，訊息、來電等內容透過色彩標示，輕重緩急一目了然。全螢幕觸控，HOME一鍵返回，操作更順暢。</p>
					</div>
					<div id="reviews" class="tab-pane fade">
						<div class="post-comments">
							<ul class="media-list comments-list m-bot-50 clearlist">
								<!-- Comment Item start-->
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object comment-avatar"
										src="images/blog/avater-1.jpg" alt="" width="50" height="50" />
								</a>

									<div class="media-body">
										<div class="comment-info">
											<h4 class="comment-author">
												<a href="#">Jonathon Andrew</a>

											</h4>
											<time datetime="2013-04-06T13:53">July 02, 2015, at
												11:34</time>
											<a class="comment-button" href="#"><i
												class="tf-ion-chatbubbles"></i>Reply</a>
										</div>

										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Quisque at magna ut ante eleifend eleifend.Lorem ipsum
											dolor sit amet, consectetur adipisicing elit. Quod laborum
											minima, reprehenderit laboriosam officiis praesentium?
											Impedit minus provident assumenda quae.</p>
									</div></li>
								<!-- End Comment Item -->

								<!-- Comment Item start-->
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object comment-avatar"
										src="images/blog/avater-4.jpg" alt="" width="50" height="50" />
								</a>

									<div class="media-body">

										<div class="comment-info">
											<div class="comment-author">
												<a href="#">Jonathon Andrew</a>
											</div>
											<time datetime="2013-04-06T13:53">July 02, 2015, at
												11:34</time>
											<a class="comment-button" href="#"><i
												class="tf-ion-chatbubbles"></i>Reply</a>
										</div>

										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Quisque at magna ut ante eleifend eleifend. Lorem ipsum
											dolor sit amet, consectetur adipisicing elit. Magni natus,
											nostrum iste non delectus atque ab a accusantium optio,
											dolor!</p>

									</div></li>
								<!-- End Comment Item -->

								<!-- Comment Item start-->
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object comment-avatar"
										src="images/blog/avater-1.jpg" alt="" width="50" height="50">
								</a>

									<div class="media-body">

										<div class="comment-info">
											<div class="comment-author">
												<a href="#">Jonathon Andrew</a>
											</div>
											<time datetime="2013-04-06T13:53">July 02, 2015, at
												11:34</time>
											<a class="comment-button" href="#"><i
												class="tf-ion-chatbubbles"></i>Reply</a>
										</div>

										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Quisque at magna ut ante eleifend eleifend.</p>

									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- 	<section class="products related-products section"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="title text-center"> -->
<!-- 					<h2>Related Products</h2> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<span class="bage">Sale</span> <img class="img-responsive" -->
<!-- 								src="images/shop/products/product-5.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">Reef Boardsport</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$200</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-1.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search-strong"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">Rainbow Shoes</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$200</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-2.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">Strayhorn SP</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$230</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="product-item"> -->
<!-- 						<div class="product-thumb"> -->
<!-- 							<img class="img-responsive" -->
<!-- 								src="images/shop/products/product-3.jpg" alt="product-img" /> -->
<!-- 							<div class="preview-meta"> -->
<!-- 								<ul> -->
<!-- 									<li><span data-toggle="modal" data-target="#product-modal"> -->
<!-- 											<i class="tf-ion-ios-search"></i> -->
<!-- 									</span></li> -->
<!-- 									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li> -->
<!-- 									<li><a href=""><i class="tf-ion-android-cart"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="product-content"> -->
<!-- 							<h4> -->
<!-- 								<a href="product-single.html">Bradley Mid</a> -->
<!-- 							</h4> -->
<!-- 							<p class="price">$200</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->



<!-- 	<!-- Modal --> -->
<!-- 	<div class="modal product-modal fade" id="product-modal"> -->
<!-- 		<button type="button" class="close" data-dismiss="modal" -->
<!-- 			aria-label="Close"> -->
<!-- 			<i class="tf-ion-close"></i> -->
<!-- 		</button> -->
<!-- 		<div class="modal-dialog " role="document"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-body"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-8"> -->
<!-- 							<div class="modal-image"> -->
<!-- 								<img class="img-responsive" -->
<!-- 									src="images/shop/products/modal-product.jpg" /> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-3"> -->
<!-- 							<div class="product-short-details"> -->
<!-- 								<h2 class="product-title">GM Pendant, Basalt Grey</h2> -->
<!-- 								<p class="product-price">$200</p> -->
<!-- 								<p class="product-short-description">Lorem ipsum dolor sit -->
<!-- 									amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo -->
<!-- 									laborum numquam rem aut officia dicta cumque.</p> -->
<!-- 								<a href="" class="btn btn-main">Add To Cart</a> <a href="" -->
<!-- 									class="btn btn-transparent">View Product Details</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<footer class="footer section text-center"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-12"> -->
<!-- 					<ul class="social-media"> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-facebook"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-instagram"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-twitter"></i> -->
<!-- 						</a></li> -->
<!-- 						<li><a href=""> <i class="tf-ion-social-pinterest"></i> -->
<!-- 						</a></li> -->
<!-- 					</ul> -->
<!-- 					<ul class="footer-menu"> -->
<!-- 						<li><a href="">CONTACT</a></li> -->
<!-- 						<li><a href="">SHIPPING</a></li> -->
<!-- 						<li><a href="">TERMS OF SERVICE</a></li> -->
<!-- 						<li><a href="">PRIVACY POLICY</a></li> -->
<!-- 					</ul> -->
<!-- 					<p class="copyright-text">Powered by Bootstrap</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->
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



	
	<!-- Main Js File -->
	<script src="js/script.js"></script>



</body>
</html>