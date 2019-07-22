<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Aviato E-Commerce Template">
<meta name="author" content="Themefisher.com">
<meta charset="UTF-8">




<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />

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


<style>
.circular {
	border-radius: 8 0%;
}
</style>

</head>
<body id="body">

	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					EEIT後台 <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="back2">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>賣場資訊</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>商品管理</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">商品資訊</h6>
						<a class="collapse-item" href="backproducts">全部商品</a> <a
							class="collapse-item" href='backaddProduct'>商品上架</a>
						<!--             <a class="collapse-item" href="products/add2">手機規格修改</a> -->
						<!--              <a class="collapse-item" href='productupdate'>產品資訊修改</a> -->

					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>廣告</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">廣告</h6>
						<a class="collapse-item" href="utilities-color.html">購買廣告</a> <a
							class="collapse-item" href="utilities-border.html">曝光商品</a>
						<!--             <a class="collapse-item" href="utilities-animation.html">Animations</a> -->
						<!--             <a class="collapse-item" href="utilities-other.html">Other</a> -->
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">帳號資訊</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>廠商資料</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">基本資料</a> <a
							class="collapse-item" href="register.html">更改密碼</a>
					</div>
				</div></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<p style='font-size: 20px;'>詳細資料</p>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie
									Luna</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>


				<!-- End of Topbar -->







				<ol class="breadcrumb">

					<li><a class="btn btn-primary" href="backproducts">返回</a></li>
				</ol>

				<div class="container">

					<div class="row mt-20">
						<div class="col-md-5">
							<div class="single-product-slider">
								<div id='carousel-custom' class='carousel slide'
									data-ride='carousel'>
									<div class='carousel-outer'>

										<!-- me art lab slider -->
										<div class='carousel-inner '>
											<div class='item active'>
												<img 
													src="<c:url value='/getPicture/${product.productId}'/>"
													alt=''
													data-zoom-image="<c:url value='/getPicture/${product.productId}'/>"
													style='width: 500px; height: 637px' />
											</div>
											<div class='item'>
												<img 
													src="<c:url value='/getPicture2/${product.productId}'/>"
													alt=''
													data-zoom-image="<c:url value='/getPicture2/${product.productId}'/>" 
													style='width: 500px; height: 637px' />
													
											</div>

											<div class='item'>
												<img 
													src="<c:url value='/getPicture3/${product.productId}'/>"
													alt=''
													data-zoom-image="<c:url value='/getPicture3/${product.productId}'/>"
													style='width: 500px; height: 637px' />
											</div>
											<div class='item'>
												<img 
													src="<c:url value='/getPicture4/${product.productId}'/>"
													alt=''
													data-zoom-image="<c:url value='/getPicture4/${product.productId}'/>"
													style='width: 500px; height: 637px' />
											</div>
											<div class='item'>
												<img 
													src="<c:url value='/getPicture5/${product.productId}'/>"
													alt=''
													data-zoom-image="<c:url value='/getPicture5/${product.productId}'/>"
													style='width: 500px; height: 637px' />
											</div>

										</div>

										<!-- sag sol -->
										<a class='left carousel-control' href='#carousel-custom'
											data-slide='prev'> <i class="tf-ion-ios-arrow-left"></i>
										</a> <a class='right carousel-control' href='#carousel-custom'
											data-slide='next'> <i class="tf-ion-ios-arrow-right"></i>
										</a>
									</div>

									<!-- thumb -->

								</div>
							</div>
						</div>
						<div class="col-md-7">
							<div class="single-product-details">
								<h2>${product.title}</h2>

								<p class="product-price">${product.price}</p>

								<div class="product-description mt-20">
									<strong>螢幕:&nbsp;</strong> <span>${cellphone.screensize}</span>
								</div>
								<div class="product-description mt-20">
									<strong>相機 :&nbsp;</strong> <span>${cellphone.screenpixel}</span>
								</div>
								<div class="product-description mt-20">
									<strong>RAM:&nbsp;</strong> <span>${cellphone.ram}</span>
								</div>
								<div class="product-description mt-20">
									<strong>CPU:&nbsp;</strong> <span>${cellphone.CPU}</span>
								</div>
								<div class="product-description mt-20">
									<strong>ROM:&nbsp;</strong> <span>${cellphone.rom}</span>
								</div>

								<div class="product-size">
									<span>顏色:</span> <select class="form-control">
										<option>BLACK</option>
										<option>WHITE</option>
										<option>GOLD</option>
									</select>
								</div>
								<br> <br> <br> <br> <br>
								<div class="col-md-7">
									<div class="single-product-slider">
										<div id='carousel-custom' class='carousel slide'
											data-ride='carousel'>
											<div class='carousel-outer'>
												<ol class='carousel-indicators mCustomScrollbar meartlab'>
													<li data-target='#carousel-custom' data-slide-to='0'
														class='active'><img
														src="<c:url value='/getPicture/${product.productId}'/>"
														alt='' /></li>
													<li data-target='#carousel-custom' data-slide-to='1'>
														<img
														src="<c:url value='/getPicture2/${product.productId}'/>"
														alt='' />
													</li>
													<li data-target='#carousel-custom' data-slide-to='2'>
														<img
														src="<c:url value='/getPicture3/${product.productId}'/>"
														alt='' />
													</li>
													<li data-target='#carousel-custom' data-slide-to='3'>
														<img
														src="<c:url value='/getPicture4/${product.productId}'/>"
														alt='' />
													</li>
													<li data-target='#carousel-custom' data-slide-to='4'>
														<img
														src="<c:url value='/getPicture5/${product.productId}'/>"
														alt='' />
													</li>
												</ol>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12">
							<div class="tabCommon mt-20">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#details"
										aria-expanded="true">商品資訊</a></li>
									<li class=""><a data-toggle="tab" href="#reviews"
										aria-expanded="false">賣場資訊</a></li>
									<li class=""><a data-toggle="tab" href="#qa"
										aria-expanded="false">問與答</a></li>
								</ul>
								<div class="tab-content patternbg">
									<!-- 					 TAB1 -->
									<div id="details" class="tab-pane fade active in">
										<h1>${product.author}</h1>
										<h3>${cellphone.CPU}&nbsp;核心</h3>
										<h3>生產時間:&nbsp;${cellphone.releasedate}</h3>
										<h3>相機畫素:&nbsp;${cellphone.screenpixel}</h3>
										<h3>螢幕尺寸:&nbsp;${cellphone.screensize}</h3>
										<h3>作業系統:&nbsp;${cellphone.system}</h3>

										<p>${cellphone.brand}</p>

									</div>
									<!-- 					 TAB2 -->
									<div id="reviews" class="tab-pane fade">
										<div class="post-comments">
											<ul class="media-list comments-list m-bot-50 clearlist">
												<!-- Comment Item start 塞問與答對話  -->
												<li class="media"><a class="pull-left" href="#"> <img
														class="media-object comment-avatar"
														src="images/blog/avater-1.jpg" alt="" width="50"
														height="50" />
												</a>

													<div class="media-body">
														<div class="comment-info">
															<h4 class="comment-author">
																<a href="#">帥氣宗翰</a>
															</h4>
															<time datetime="2013-04-06T13:53">July 02, 2015,
																at 11:34</time>
															<a class="comment-button" href="#"><i
																class="tf-ion-chatbubbles"></i>Reply</a>
														</div>
														<p>大家好歡迎到我的賣場---我是李宗翰我超帥DER</p>
													</div></li>
												<!-- End Comment Item -->
											</ul>
										</div>
									</div>
									<!-- 					 TAB3 -->
									<div id="qa" class="tab-pane fade ">
										<div class="post-comments">

											<h6>這裡放問與答內容</h6>

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2019</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>


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

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script src="vendor/chart.js/Chart.min.js"></script>

		<!-- Page level custom scripts -->
		<script src="js/demo/chart-area-demo.js"></script>
		<script src="js/demo/chart-pie-demo.js"></script>
</body>
</html>
