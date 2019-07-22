<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
								width="135px" height="39px" viewBox="0 0 155 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group"
									transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="128.94" y="325">哥機拉</tspan>
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
							<c:forEach var='ctest' items="${shopCart}">
								購物車明細 廠商${ctest.key}的所有商品
								<!-- Cart Item -->
             			     <c:forEach var='test' items='${ctest.value.cartitemmap}'>
								<div class="media">
									<a class="pull-left" href="#"> 
									<img class="media-object"src="<c:url value='/getPicture/${test.value.productBean.productId}' />" alt="image" />
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
											<strong>${test.value.quantity*test.value.price}</strong>
										</h5>
									</div>
									<a href="#" class="remove"><i class="tf-ion-close"></i></a>
									<c:set value="${sum +test.value.quantity*test.value.price}"
									var="sum" />
								</div>
									</c:forEach>
								<!-- / Cart Item -->
								</c:forEach>
								<div class="cart-summary">
									<span>Total</span> <span class="total-price">${sum}</span>
								</div>
								<ul class="text-center cart-buttons">
									<li><a href="<spring:url value='/viewtocart' />"
										class="btn btn-small">View Cart</a></li>
									
								</ul>
							</div></li>
						<!-- / Cart -->

						<!-- 						Search -->
						<!-- 						<li class="dropdown search dropdown-slide"><a href="#" -->
						<!-- 							class="dropdown-toggle" data-toggle="dropdown" -->
						<!-- 							data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i> -->
						<!-- 								Search</a> -->
						<!-- 							<ul class="dropdown-menu search-dropdown"> -->
						<!-- 							</ul></li> -->
						<!-- 						/ Search -->



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

						<!-- Home首頁 -->
						<li class="dropdown "><a href="index.html">Home</a></li>
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
								<li><a href="#要放JSP網址">全部商品</a></li>
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
						<h1 class="page-name">會員資料</h1>
						<ol class="breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li class="active">my account</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="user-dashboard page-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="list-inline dashboard-menu text-center">
						<li><a class="active"
							href="<spring:url value='/memberorders'/>">訂單狀況</a></li>
						<%-- 						<li><a href="<c:url value='/orderdetail'/>" >訂單詳細</a></li> --%>
						<li><a href="address.html">申請廠商</a></li>
						<li><a href="profile-details.html">修改資料</a></li>
					</ul>
					<div class="dashboard-wrapper user-dashboard">
						<div class="media">
							<div class="pull-left">
								<img class="media-object user-img" src="images/member.gif"
									alt="Image">
							</div>
							<div class="media-body">
								<h2 class="media-heading">Welcome ${memberbean.memberid} 會員</h2>
								<p>下面是您的訂單現況</p>
							</div>
						</div>
						<div class="total-order mt-20">
							<h4>Total Orders</h4>
							<div class="table-responsive">
								<table class="table">
									<c:forEach var='cart' items="${orders}">
										<thead>
											<tr>
												<th>訂單編號:</th>
												<th>訂單日期:</th>
												<th>訂單狀況:</th>
												<th>訂單價格:</th>
												<th>確認收貨:</th>
												<th>訂單明細:</th>
												<th>評價賣家:</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">${cart.cartID}</a></td>
												<td>${cart.orderdate}</td>
												<td>${cart.status}</td>
												<td>$${cart.totalprice}</td>
												<td>
													<form action="<c:url value='/received'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="確認收貨"
															class="btn btn-main btn-small btn-round" />
													</form>
												</td>
												<td>
													<form action="<c:url value='/membercheckdetail'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="查詢此筆訂單明細"
															class="btn btn-main btn-small btn-round" />
													</form>
												</td>
												<td>
													<form action="<c:url value='/commentseller'/>">
														<input type="hidden" name="orderId" value="${cart.cartID}" />
														<input type="submit" value="評價賣家" class="btn btn-main btn-small btn-round"/>
														</form>
												</td>
											</tr>

										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%-- 	會員編號:${memberbean.seqNo} --%>
	<%-- 	<br> 您的帳號:${memberbean.memberid} --%>
	<!-- 	<br> -->
	<%-- 	<c:forEach var='cart' items="${orders}"> --%>
	<%-- 訂單編號:${cart.cartID} 訂單價格:${cart.totalprice} 訂單狀態${cart.status} 訂單日期${cart.orderdate}<br> --%>
	<%-- 		<form action="<c:url value='/received'/>"> --%>
	<%-- 			<input type="hidden" name="orderId" value="${cart.cartID}" /> <input --%>
	<!-- 				type="submit" value="確認已收貨" /> -->
	<%-- 		</form> --%>
	<%-- 		<form action="<c:url value='/membercheckdetail'/>"> --%>
	<%-- 			<input type="hidden" name="orderId" value="${cart.cartID}" /> <input --%>
	<!-- 				type="submit" value="查詢此筆訂單資料" /> -->
	<%-- 		</form> --%>
	<%-- 	</c:forEach> --%>



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


</body>
</html>