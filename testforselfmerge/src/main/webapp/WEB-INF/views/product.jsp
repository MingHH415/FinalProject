<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html class="no-js">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Template">

<meta name="author" content="Themefisher.com">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>backproduct</title>
<%-- <link rel='stylesheet'href='${pageContext.request.contextPath}/css/styles.css'type="text/css" /> --%>
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
					<!-- 				<div class="contact-number"> -->
					<!-- 					<i class="tf-ion-ios-telephone"></i> -->
					<!-- 					<span>0129- 12323-123123</span> -->
					<!-- 				</div> -->
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
								<div class="media">
									<a class="pull-left" href="#"> <img class="media-object"
										src="images/shop/cart/cart-1.jpg" alt="image" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="">Ladies Bag</a>
										</h4>
										<div class="cart-price">
											<span>1 x</span> <span>1250.00</span>
										</div>
										<h5>
											<strong>$1200</strong>
										</h5>
									</div>
									<a href="#" class="remove"><i class="tf-ion-close"></i></a>
								</div>
								<!-- / Cart Item -->
								<!-- Cart Item -->
								<div class="media">
									<a class="pull-left" href="#"> <img class="media-object"
										src="images/shop/cart/cart-2.jpg" alt="image" />
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="">Ladies Bag</a>
										</h4>
										<div class="cart-price">
											<span>1 x</span> <span>1250.00</span>
										</div>
										<h5>
											<strong>$1200</strong>
										</h5>
									</div>
									<a href="#" class="remove"><i class="tf-ion-close"></i></a>
								</div>
								<!-- / Cart Item -->

								<div class="cart-summary">
									<span>Total</span> <span class="total-price">$1799.00</span>
								</div>
								<ul class="text-center cart-buttons">
									<li><a href="" class="btn btn-small">View Cart</a></li>
									<li><a href="" class="btn btn-small btn-solid-border">Checkout</a></li>
								</ul>
							</div></li>
						<!-- / Cart -->

						<!-- Search -->
						<!-- 	          <li class="dropdown search dropdown-slide"> -->
						<!-- 	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i> Search</a> -->
						<!-- 	            <ul class="dropdown-menu search-dropdown"> -->
						<!-- 	              <li><form action="post"><input type="search" class="form-control" placeholder="Search..."></form></li> -->
						<!-- 	            </ul> -->
						<!-- 	          </li> -->
						<!-- / Search -->

						<!-- Languages -->
						<!-- 	          <li class="commonSelect"> -->
						<!-- 	          	<select class="form-control"> -->
						<!--                     <option>EN</option> -->
						<!--                     <option>DE</option> -->
						<!--                     <option>FR</option> -->
						<!--                     <option>ES</option> -->
						<!--                 </select> -->
						<!-- 	          </li> -->
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
											<li><a href="<c:url value='/viewtocart'/>">Cart</a></li>
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
	<section class="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb">
						<!-- 					<li><a href="#">Home</a></li> -->
						<li><a href="<spring:url value='/products' />">返回</a></li>
						<!-- 					<li><a href="#">Shop</a></li> -->
						<!-- 					<li class="active">Single Product</li> -->
					</ol>
				</div>
				<div class="col-md-6">
					<ol class="product-pagination text-right">
						<li><a href="#"><i class="tf-ion-ios-arrow-left"></i>
								Next </a></li>
						<li><a href="#">Preview <i class="tf-ion-ios-arrow-right"></i></a></li>
					</ol>
				</div>
			</div>
			<div class="row mt-20">
				<div class="col-md-5">
					<div class="single-product-slider">
						<div id='carousel-custom' class='carousel slide'
							data-ride='carousel'>
							<div class='carousel-outer'>

								<!-- me art lab slider -->
								<div class='carousel-inner '>
									<div class='item active'>
										<img width='500px' height='637px'
											src="<c:url value='/getPicture/${product.productId}'/>"
											alt=''
											data-zoom-image=" width='500px' height='637px'<c:url value='/getPicture/${product.productId}'/>" />
										<%-- 									<img width='500px' height='637px'src="<c:url value='/getPicture/${product.productId}'/>" /> --%>
									</div>
									<div class='item'>
										<img width='500px' height='637px'
											src='images/shop/single-products/product-2.jpg' alt=''
											data-zoom-image="images/shop/single-products/product-2.jpg" />
									</div>

									<div class='item'>
										<img width='500px' height='637px'
											src='images/shop/single-products/product-3.jpg' alt=''
											data-zoom-image="images/shop/single-products/product-3.jpg" />
									</div>
									<div class='item'>
										<img width='500px' height='637px'
											src='images/shop/single-products/product-4.jpg' alt=''
											data-zoom-image="images/shop/single-products/product-4.jpg" />
									</div>
									<div class='item'>
										<img width='500px' height='637px'
											src='images/shop/single-products/product-5.jpg' alt=''
											data-zoom-image="images/shop/single-products/product-5.jpg" />
									</div>
									<div class='item'>
										<img width='500px' height='637px'
											src='images/shop/single-products/product-6.jpg' alt=''
											data-zoom-image="images/shop/single-products/product-6.jpg" />
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
							<ol class='carousel-indicators mCustomScrollbar meartlab'>
								<li data-target='#carousel-custom' data-slide-to='0'
									class='active'><img
									src="<c:url value='/getPicture/${product.productId}'/>" alt='' />
								</li>
								<li data-target='#carousel-custom' data-slide-to='1'><img
									src='images/shop/single-products/product-2.jpg' alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='2'><img
									src='images/shop/single-products/product-3.jpg' alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='3'><img
									src='images/shop/single-products/product-4.jpg' alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='4'><img
									src='images/shop/single-products/product-5.jpg' alt='' /></li>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="single-product-details">
						<h2>${product.title}</h2>

						<p class="product-price">${product.price}</p>

						<div class="product-description mt-20">
							<strong>螢幕: </strong> <span>${cellphone.screensize}</span>
						</div>
						<div class="product-description mt-20">
							<strong>相機 : </strong> <span>${cellphone.screenpixel}</span>
						</div>
						<div class="product-description mt-20">
							<strong>CPU: </strong> <span>${cellphone.CPU}</span>
						</div>
						<div class="product-description mt-20">
							<strong>RAM: </strong> <span>${cellphone.ram}</span>
						</div>
						<!-- 				<div class="product-description mt-20"><strong>品牌名稱: </strong>    <span>${cellphone.brand}</span></div> -->
						<!-- 				<div class="product-description mt-20"><strong>產品型號: </strong>    <span>${cellphone.modelid} </span></div> -->
						<!-- 				<div class="product-description mt-20"><strong>系統: </strong> 		<span>${cellphone.system} </span></div> -->


						<div class="product-size">
							<span>顏色:</span> <select class="form-control">
								<option>BLACK</option>
								<option>WHITE</option>
								<option>GOLD</option>
							</select>
						</div>
						<div class="product-size">
							<span>容量:</span> <select class="form-control">
								<option>32 GB</option>
								<option>128 GB</option>
								<option>256 GB</option>
							</select>
						</div>

						<!-- 					<div class="product-category"> -->
						<!-- 						<span>Categories:</span> -->
						<!-- 						<ul> -->
						<!-- 							<li><a href="#">Products</a></li> -->
						<!-- 							<li><a href="#">Soap</a></li> -->
						<!-- 						</ul> -->
						<!-- 					</div> -->
						<!-- 			<a href='#' class='btn btn-warning btn-large'> <span class='glyphicon-shopping-cart glyphicon'></span>加入購物車</a> -->
						<form method='POST' action="<c:url value='/addtocart'/>">
							<div class="product-quantity">
								<span>購買數量:</span>
								<div class="product-quantity-slider">
									<input type="number" min="0" max="10" type="text" value="1"
										name="quantity">
								</div>
							</div>
							<input type='hidden' name='price'
								value='${product.price*product.discount}' /> <input
								type='hidden' name='productId' value='${product.productId}' />
							<input type='hidden' name='position' value='1' /> <input
								type='submit' class="btn btn-main mt-20" value='加入購物車'>
						</form>
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
								<h4>商品標題</h4>
								<div>
									<img width='100px' height='100px'
										src="<c:url value='/getPicture/${product.productId}'/>" />
								</div>
								<p>商品介紹</p>
								<p>商品介紹</p>
								<p>商品介紹</p>
								<p>商品介紹</p>
								<p>商品介紹</p>
								<p>商品介紹</p>
								<p>商品介紹</p>
							</div>
							<!-- 					 TAB2 -->
							<div id="reviews" class="tab-pane fade">
								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">
										<!-- Comment Item start 塞問與答對話  -->
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
													elit. Quisque at magna ut ante eleifend eleifend.Lorem
													ipsum dolor sit amet, consectetur adipisicing elit. Quod
													laborum minima, reprehenderit laboriosam officiis
													praesentium? Impedit minus provident assumenda quae.</p>
											</div></li>
										<!-- End Comment Item -->
									</ul>
								</div>
							</div>

							<div id="qa" class="tab-pane fade">
								<h5>${product.title}</t>
									<span>Questions and Answers</span>
								</h5>
								<form method="POST" action="<c:url value='/askquestion'/>">
									<p>
										<input type="text" name="question" /> <input type="hidden"
											name="productId" value="${product.productId}"> <input
											type="submit" class="btn btn-main btn-small btn-round">
									</p>
								</form>

								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">
										<!-- Comment Item start 塞問與答對話  -->
										<c:forEach var="qbean" items="${product.qabean}">
											<li class="media"><a class="pull-left" href="#"> <img
													class="media-object comment-avatar"
													src="images/blog/avater-1.jpg" alt="" width="50"
													height="50" />
											</a>
												<div class="media-body">
													<div class="comment-info">
														<h4 class="comment-author">
															<span>${qbean.account}</span>
														</h4>
														<time datetime="2013-04-06T13:53">${qbean.questiondatetime}</time>
<!-- 														<a class="comment-button" href="#"><i -->
<!-- 															class="tf-ion-chatbubbles"></i>Reply</a> -->
													</div>
													<p>${qbean.question}</p>
												</div></li>
											<li class="media"><a class="pull-left" href="#"> <img
													class="media-object comment-avatar"
													src="images/blog/avater-1.jpg" alt="" width="50"
													height="50" />
											</a>
												<div class="media-body">
													<div class="comment-info">
														<h4 class="comment-author">
															<span>廠商回復</span>
														</h4>
														<time datetime="2013-04-06T13:53">${qbean.answerdatetime}</time>
<!-- 														<a class="comment-button" href="#"><i -->
<!-- 															class="tf-ion-chatbubbles"></i>Reply</a> -->
													</div>
													<p>${qbean.answer}</p>
												</div></li>
											<h5>廠商回覆</h5>
											<form method="POST" action="<c:url value='/answerquestion'/>">
												<input type="text" name="answer" /> <input type="hidden"
													name="productId" value="${product.productId}"> <input
													type="hidden" name="qaId" value="${qbean.qaId}" /> <input
													type="submit" class="btn btn-main btn-small btn-round">
											</form>
										</c:forEach>
										<!-- End Comment Item -->
									</ul>
								</div>
							</div>
							<!-- 					 TAB3 -->
							<!-- 							<div id="qa1" class="tab-pane fade "> -->


							<%-- 								<h5>${product.title}</t> --%>
							<!-- 									Questions and Answers -->
							<!-- 								</h5> -->
							<%-- 								<form method="POST" action="<c:url value='/askquestion'/>"> --%>
							<!-- 									<input type="text" name="question" /> <input type="hidden" -->
							<%-- 										name="productId" value="${product.productId}"> <input --%>
							<!-- 										type="submit"> -->
							<!-- 								</form> -->

							<!-- 								<div class="post-comments"> -->
							<%-- 									<c:forEach var="qbean" items="${product.qabean}"> --%>
							<!-- 										<hr> -->
							<%-- 						提問會員:${qbean.account}<br> --%>
							<%-- 						提問內容:${qbean.question}<br> --%>
							<%-- 						提問日期:${qbean.questiondatetime}<br> --%>
							<!-- 										<hr> -->
							<%-- 						賣家回答:${qbean.answer}<br> --%>
							<%-- 						回答日期:${qbean.answerdatetime}<br> --%>
							<%-- 										<form method="POST" action="<c:url value='/answerquestion'/>"> --%>
							<!-- 											<input type="text" name="answer" /> <input type="hidden" -->
							<%-- 												name="productId" value="${product.productId}"> <input --%>
							<%-- 												type="hidden" name="qaId" value="${qbean.qaId}" /> <input --%>
							<!-- 												type="submit"> -->
							<!-- 										</form> -->
							<%-- 									</c:forEach> --%>
							<%-- 									${errormsg.qanologin} --%>



							<!-- 								</div> -->
							<!-- 							</div> -->
						</div>
					</div>
				</div>
			</div>
	</section>
	<section class="products related-products section">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>廣告商品</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
							<span class="bage">Sale</span> <img class="img-responsive"
								src="images/shop/products/product-5.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">廣告商品1</a>
							</h4>
							<p class="price">$777</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive"
								src="images/shop/products/product-1.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search-strong"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">廣告商品2</a>
							</h4>
							<p class="price">$888</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive"
								src="images/shop/products/product-2.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">廣告商品3</a>
							</h4>
							<p class="price">$999</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
							<img class="img-responsive"
								src="images/shop/products/product-3.jpg" alt="product-img" />
							<div class="preview-meta">
								<ul>
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search"></i>
									</span></li>
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="product-single.html">廣告商品4</a>
							</h4>
							<p class="price">$222</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>



	<div style="position: relative; top: 100px; left: 150px">

		<img width='1000px' height='1000px'
			src="<c:url value='/getImage/${product.productId}'/>" />
	</div>





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
						<div class="col-md-8">
							<div class="modal-image">
								<img class="img-responsive"
									src="images/shop/products/modal-product.jpg" />
							</div>
						</div>
						<div class="col-md-3">
							<div class="product-short-details">
								<h2 class="product-title">GM Pendant, Basalt Grey</h2>
								<p class="product-price">$200</p>
								<p class="product-short-description">Lorem ipsum dolor sit
									amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo
									laborum numquam rem aut officia dicta cumque.</p>
								<a href="" class="btn btn-main">Add To Cart</a> <a href=""
									class="btn btn-transparent">View Product Details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
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
