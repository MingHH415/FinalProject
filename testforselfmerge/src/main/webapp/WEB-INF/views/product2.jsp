<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css'  type="text/css" />
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>產品資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
		
			<div class="col-md-5">
				<h3>${product.title}</h3>
				<p>作者: ${product.author}</p>
				<p>單價: ${product.price}</p>
				<c:choose>
					<c:when test='${product.discount != 1.0 }'>
						<p>
							折扣: ${product.discountStr} &nbsp;&nbsp; 
							實售: <font color='red'>${product.price*product.discount}元</font>
						</p>
					</c:when>
					<c:otherwise>
						<p>&nbsp;</p>
					</c:otherwise>
				</c:choose>

				<p>書籍分類: ${product.category}</p>
				<p>
					<strong>商品編號: </strong> <span class='label label-warning'>
						${product.productId} </span>
				</p>
				<p>
				<a href="<spring:url value='/products' />" class="btn btn-default">
							<span class="glyphicon-hand-left glyphicon"></span>返回
						</a> 
					
					<form method='POST' action="<c:url value='/addtocart'/>">
					<input type='hidden' name='price' value='${product.price*product.discount}'/>
					<input type='hidden' name='productId' value='${product.productId}'/>
					<input type="number" min="0" max="10" name="quantity" value='1'/>	
					<input type='submit' value='加入購物車' class='btn btn-warning btn-large'> 				
					</form>
					<form method='GET' action="<c:url value='/viewtocart'/>">
					<input type='submit' value='檢視購物車' class='btn btn-warning btn-large'>
					</form>
			</div>
		</div>
	</section>
</body>
</html>
