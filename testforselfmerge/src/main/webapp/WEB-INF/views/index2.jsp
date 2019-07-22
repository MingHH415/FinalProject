<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="body">

<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4">

			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="index.html">
						<!-- replace logo here -->
						<svg width="135px" height="29px" viewBox="0 0 155 29" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40" font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
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
	          <li class="dropdown cart-nav dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="tf-ion-android-cart"></i>Cart</a>
	            <div class="dropdown-menu cart-dropdown">
	            	
	            	<!-- Cart Item 1-->
	            	
	            	<div class="media">
	            		<a class="pull-left" href="#">
	            			<img  class="media-object" src="images/shop/cart/cart-1.jpg" alt="image" />
	            		</a>
	            		<div class="media-body">
	            			<h4 class="media-heading"><a href="">購買商品EL</a></h4>
	            			<div class="cart-price">
                              <span>購買數量EL</span>
                              <span>單品價格EL</span>
                            </div>
                            <h5><strong>此項總價EL(單品X購買數量)</strong></h5>
	            		</div>
                        <a href="#" class="remove"><i class="tf-ion-close"></i></a>
	            	</div>
	            	<!-- / Cart Item 1-->
	            	<div class="media">
	            		<a class="pull-left" href="#">
	            			<img  class="media-object" src="images/shop/cart/cart-2.jpg" alt="image" />
	            		</a>
	            		<div class="media-body">
	            			<h4 class="media-heading"><a href="">Ladies Bag</a></h4>
	            			<div class="cart-price">
                              <span>1 x</span>
                              <span>1250.00</span>
                            </div>
                            <h5><strong>$1200</strong></h5>
	            		</div>
                        <a href="#" class="remove"><i class="tf-ion-close"></i></a>
	            	</div>
	            	<!-- Cart Item 2-->
	            	<div class="media">
	            		<a class="pull-left" href="#">
	            			<img  class="media-object" src="images/shop/cart/cart-2.jpg" alt="image" />
	            		</a>
	            		<div class="media-body">
	            			<h4 class="media-heading"><a href="">Ladies Bag</a></h4>
	            			<div class="cart-price">
                              <span>1 x</span>
                              <span>1250.00</span>
                            </div>
                            <h5><strong>$1200</strong></h5>
	            		</div>
                        <a href="#" class="remove"><i class="tf-ion-close"></i></a>
	            	</div><!-- / Cart Item -->
	            	
	            	<div class="cart-summary">
                        <span>Total</span>
                        <span class="total-price">$1799.00</span>
                    </div>
                    <ul class="text-center cart-buttons">
                    	<li><a href="" class="btn btn-small">View Cart</a></li>
                    	<li><a href="" class="btn btn-small btn-solid-border">Checkout</a></li>
                    </ul>
                    
                </div>

	          </li>
	          <!-- / Cart -->

	          <!-- Search -->
	          <li class="dropdown search dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i class="tf-ion-ios-search-strong"></i> Search</a>
	            <ul class="dropdown-menu search-dropdown">
	              <li><form action="post"><input type="search" class="form-control" placeholder="Search..."></form></li>
	            </ul>
	          </li>
	          <!-- / Search -->
	           <li class="nav-item dropdown no-arrow"> 
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
	          

	        </ul><!-- / .nav .navbar-nav .navbar-right -->
			</div>
		</div>
	</div>
</section><!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
	    <div class="container">
	      <div class="navbar-header">
	      	<h2 class="menu-title">Main Menu</h2>
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>

	      </div><!-- / .navbar-header -->

	      <!-- Navbar Links -->
	      <div id="navbar" class="navbar-collapse collapse text-center">
	        <ul class="nav navbar-nav">

	          <!-- Home首頁 -->
	          <li class="dropdown ">
	            <a href="index.html">Home</a>
	          </li><!-- / Home -->


	       <!-- 商品 -->   
	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">商品 <span class="tf-ion-ios-arrow-down"></span></a>
	                	<ul class="dropdown-menu">
							<li class="dropdown-header">商品</li>
							<li><a href="#要放JSP網址">全部商品</a></li>
							<li><a href="#要放JSP網址">廠牌搜索</a></li>
							<li><a href="#要放JSP網址">比較商品</a></li>
							<li><a href="#要放JSP網址">進階搜索</a></li>
	                	</ul>
	              
			</li>
<!-- / 商品 -->	

<!-- 訂單 -->
	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">訂單 <span class="tf-ion-ios-arrow-down"></span></a>
		                	<ul class="dropdown-menu">
		                	<li class="dropdown-header">訂單</li>
								<li><a href="#要放JSP網址">訂單總攬 </a></li>
								<li><a href="#要放JSP網址">購物車 </a></li>
		                	</ul>
				</li>
<!-- / 訂單 -->

 <!-- 帳號 -->
	          <li class="dropdown dropdown-slide">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">帳號 <span class="tf-ion-ios-arrow-down"></span></a>
	            <ul class="dropdown-menu">
	            <li class="dropdown-header">帳號</li>
					<li><a href="#要放JSP網址">帳號資訊</a></li>
					<li><a href="#要放JSP網址">帳號修改</a></li>
					<li><a href="#要放JSP網址">申請廠商</a></li>
	            </ul>
	          </li>
<!-- / 帳號 -->

	        </ul><!--/ .nav .navbar-nav -->

	      	</div><!--/.navbar-collapse -->
	    </div><!--/ .container -->
	</nav>
</section>

<section class="main-slider">
	<div id="home_slider_wrapper" class="rev_slider_wrapper fullscreen-container" >
		<div id="home_slider" class="rev_slider fullscreenbanner tiny_bullet_slider" data-version="5.4.1">
			<ul>	<!-- SLIDE  -->
				<li data-index="rs-73" 
				data-thumb="images/slider/slider-1.png"
				data-transition="fade" 
				data-slotamount="default" 
				data-hideafterloop="0" 
				data-hideslideonmobile="off"  
				data-easein="default" 
				data-easeout="default" 
				data-masterspeed="300"   
				data-rotate="0"  
				data-saveperformance="off"  
				data-title="Slide" 
				data-param1="" 
				data-param2="" 
				data-param3="" 
				data-param4="" data-param5="" 
				data-param6="" 
				data-param7="" 
				data-param8="" 
				data-param9="" 
				data-param10="" 
				data-description="">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider-1.png" 
					data-bgposition="cover" 
					data-bgfit="cover" 
					data-bgrepeat="no-repeat" 
					data-bgparallax="on" 
					class="rev-slidebg" 
					data-no-retina
					alt="Slider image" />
					<!-- LAYERS -->

					<!-- LAYER NR. 1 -->
					<a  href="shop.html"
						class="tp-caption rev-btn  tp-resizeme" 
						data-x="['left','left','left','left']" 
						data-hoffset="['170','120','70','40']" 
						data-y="['middle','middle','middle','middle']" 
						data-voffset="['150','150','150','110']" 
						data-width="150px"
						data-height="50px"
						data-whitespace="normal"
			 			data-type="button" 
						data-responsive_offset="on" 
						data-frames='[{"delay":500,"speed":1000,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[6,6,6,6]"

						style="z-index: 5; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;cursor:pointer;text-align:center">Shop Now</a>

					<!-- LAYER NR. 3 -->
					<div class="tp-caption   tp-resizeme" 
						id="slide-73-layer-3" 
						data-x="['left','left','left','left']" data-hoffset="['150','100','50','20']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-177','-177','-177','-157']" 
						data-width="none"
						data-height="none"
						data-whitespace="normal"
			 
						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"delay":300,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[10,10,10,10]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[10,10,10,10]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

					<!-- LAYER NR. 4 -->
					<div class="tp-caption   tp-resizeme" 
						 id="slide-73-layer-2" 
						 data-x="['left','left','left','left']" data-hoffset="['150','100','50','20']" 
						 data-y="['middle','middle','middle','middle']" data-voffset="['-30','-30','-30','-30']" 
									data-fontsize="['70','70','70','50']"
						data-lineheight="['70','70','70','50']"
						data-width="['650','650','620','380']"
						data-height="none"
						data-whitespace="normal"
			 
						data-type="text" 
						data-responsive_offset="on" 

						data-frames='[{"delay":200,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[20,20,20,20]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[30,30,30,30]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #5376b8; letter-spacing: -2px;font-family:Playfair Display;">這裡一定有一隻<br>適合你的手機1</div>
				</li>
				<!-- SLIDE  -->
				<li data-index="rs-74" 
					data-transition="fade" 
					data-slotamount="default" 
					data-hideafterloop="0" 
					data-hideslideonmobile="off"  
					data-easein="default" 
					data-easeout="default" 
					data-masterspeed="300"  
					data-thumb="images/slider/slider-3.png"  
					data-rotate="0"  
					data-saveperformance="off"  
					data-title="Slide">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider-3.png" alt=""  
						data-bgposition="cover"
						data-bgfit="cover"
						data-bgrepeat="no-repeat"
						data-bgparallax="on" 
						class="rev-slidebg" data-no-retina />
					<!-- LAYERS -->

					

					<!-- LAYER NR. 6 -->
					<a 	
						href="shop.html"
						class="tp-caption rev-btn  tp-resizeme" 
						data-x="['left','left','left','left']"
						data-hoffset="['880','760','600','330']" 
						data-y="['middle','middle','middle','middle']"
						data-voffset="['120','250','150','110']" 
						data-width="150px"
						data-height="50px"
						data-whitespace="normal"
						data-type="button" 
						data-responsive_offset="on" 
						data-frames='[{"delay":500,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[8,8,8,8]"
						
						style="z-index: 6; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">Shop Now</a>

					<!-- LAYER NR. 7 -->
					<div class="tp-caption   tp-resizeme" 
						id="slide-74-layer-3" 
						data-x="['left','left','left','left']" data-hoffset="['820','700','540','270']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-177','-177','-177','-157']" 
						data-width="none"
						data-height="none"
						data-whitespace="normal"
						data-type="text" 
						data-responsive_offset="on" 
						data-frames='[{"delay":400,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[10,10,10,10]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[10,10,10,10]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

					<!-- LAYER NR. 8 -->
					<div class="tp-caption   tp-resizeme" 
						id="slide-74-layer-2" 
						data-x="['left','left','left','left']" data-hoffset="['360','240','110','80']" 
						data-y="['middle','middle','middle','middle']" data-voffset="['-30','-30','-30','-30']" 
						data-fontsize="['70','70','70','50']"
						data-lineheight="['70','70','70','50']"
						data-width="['650','650','620','380']"
						data-height="none"
						data-whitespace="normal"
						data-type="text" 
						data-responsive_offset="on" 
						data-frames='[{"delay":300,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['right','right','right','right']"
						data-paddingtop="[20,20,20,20]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[30,30,30,30]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #5376b8; letter-spacing: -2px;font-family:Playfair Display;">這裡一定有一隻<br>適合你的手機2
					</div>
				</li>
				<!-- SLIDE  -->
				<li data-index="rs-75" 
					data-transition="fade" 
					data-slotamount="default" 
					data-hideafterloop="0"
					data-hideslideonmobile="off"  
					data-easein="default" 
					data-easeout="default" 
					data-masterspeed="300" 
					data-thumb="images/slider/slider-2.png"
					data-rotate="0"  
					data-saveperformance="off"  
					data-title="Slide" 
					data-param1="" 
					data-param2="" 
					data-param3="" 
					data-param4="" 
					data-param5=""
					data-param6="" 
					data-param7="" 
					data-param8="" 
					data-param9="" 
					data-param10="" 
					data-description="">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider-2.png"
					data-bgposition="center center"
					data-bgfit="cover"
					data-bgrepeat="no-repeat" 
					data-bgparallax="on" 
					class="rev-slidebg" 
					data-no-retina  alt="slider img" />
					<!-- LAYERS -->


					<!-- LAYER NR. 10 -->
					<div class="tp-caption   tp-resizeme" 
						id="slide-75-layer-2" 
						data-x="['center','center','center','center']" 
						data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" 
						data-voffset="['-100','-100','-100','-90']" 
						data-fontsize="['70','70','70','50']"
						data-lineheight="['70','70','70','50']"
						data-width="['650','650','620','380']"
						data-height="none"
						data-whitespace="normal"
						data-type="text" 
						data-responsive_offset="on" 
						data-frames='[{"delay":200,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[20,20,20,20]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[30,30,30,30]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 6; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #FFFF33; letter-spacing: -2px;font-family:Playfair Display;">這裡一定有一隻<br>適合你的手機3 </div>

					<!-- LAYER NR. 11 -->
					<div class="tp-caption   tp-resizeme" 
						id="slide-75-layer-3" 
						data-x="['center','center','center','center']" 
						data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" 
						data-voffset="['-247','-247','-247','-217']" 
						data-width="none"
						data-height="none"
						data-whitespace="normal"
						data-type="text" 
						data-responsive_offset="on" 
						data-frames='[{"delay":300,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
						data-textAlign="['left','left','left','left']"
						data-paddingtop="[10,10,10,10]"
						data-paddingright="[20,20,20,20]"
						data-paddingbottom="[10,10,10,10]"
						data-paddingleft="[20,20,20,20]"

						style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

					<!-- LAYER NR. 12 -->
					<div class="tp-caption rev-btn  tp-resizeme" 
						data-x="['center','center','center','center']"
						data-hoffset="['0','0','0','0']" 
						data-y="['middle','middle','middle','middle']" 
						data-voffset="['80','80','80','50']" 
						data-width="150px"
						data-height="50px"
						data-whitespace="normal"
			 			data-type="button" 
						data-responsive_offset="on" 
						data-frames='[{"delay":400,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
						data-textAlign="['center','center','center','center']"
						data-paddingtop="[6,6,6,6]"
						style="z-index: 8; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;text-align:center!important;">Shop Now
					</div>
				</li>
			</ul>
			<div class="tp-bannertimer" style="height: 10px; background: rgba(0, 0, 0, 0.15);"></div>
		</div>
	</div><!-- END REVOLUTION SLIDER -->
		
		
</section>

<section class="product-category section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2>分類細項   看是要手機項目分類  還是要配件</h2>
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box">
					<a href="">
						<img src="images/shop/category/category-1.jpg" alt="" />
						<div class="content">
							<h3>分類 1</h3>
							<p>細項 1</p>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="">
						<img src="images/shop/category/category-2.jpg" alt="" />
						<div class="content">
							<h3>分類 2</h3>
							<p>細項 2</p>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box category-box-2">
					<a href="">
						<img src="images/shop/category/category-3.jpg" alt="" />
						<div class="content">
							<h3>分類 3</h3>
							<p>細項 3</p>
						</div>
					</a>	
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 推薦商品(廣告)開始 -->

<section class="products section bg-gray">
	<div class="container">
		<div class="row">
			<div class="title text-center">
				<h2>推薦商品</h2>
			</div>
		</div>
		<div class="row">
			
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<span class="bage">Sale</span>
						<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告1)</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="images/shop/products/product-2.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告2)</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="images/shop/products/product-3.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告3)</a></h4>
						<p class="price">$230</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="images/shop/products/product-4.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告4)</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="images/shop/products/product-5.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告5)</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="images/shop/products/product-6.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">推薦商品(廣告6)</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
		
<!-- 推薦商品(廣告)結束 -->			
		
		<!-- Modal -->
		<div class="modal product-modal fade" id="product-modal">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<i class="tf-ion-close"></i>
			</button>
		  	<div class="modal-dialog " role="document">
		    	<div class="modal-content">
			      	<div class="modal-body">
			        	<div class="row">
			        		<div class="col-md-8 col-sm-6 col-xs-12">
			        			<div class="modal-image">
				        			<img class="img-responsive" src="images/shop/products/modal-product.jpg" alt="product-img" />
			        			</div>
			        		</div>
			        		<div class="col-md-4 col-sm-6 col-xs-12">
			        			<div class="product-short-details">
			        				<h2 class="product-title">GM Pendant, Basalt Grey</h2>
			        				<p class="product-price">$200</p>
			        				<p class="product-short-description">
			        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
			        				</p>
			        				<a href="cart.html" class="btn btn-main">Add To Cart</a>
			        				<a href="product-single.html" class="btn btn-transparent">View Product Details</a>
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


<!--
Start Call To Action
==================================== -->

<footer class="footer section text-center">
	<div class="container">
				<p class="copyright-text">帥氣漢漢Powered by EEIT107 第五組</p>
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
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed-js/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/assets/warning.js"></script>  



    <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    


  </body>
  </html>
