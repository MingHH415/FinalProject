<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>navigator</h1>
			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<div
			style="float: left; border-style: solid; width: 200px; height: 1000px; position: absolute; top: 90px; left: 0px;">hello</div>


		<div class="row" style="position: absolute; top: 90px; left: 200px;">
			<c:forEach var='cell' items='${cells}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<img width='100' height='200'
							src="<c:url value='/getPicture/${cell.productId}' />" />
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>${cell.CPU}</b>
							</p>
							<p>${cell.system}</p>

							<p>
								<a href="<spring:url value='/product?id=${cell.cellphoneId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>詳細資料
								</a> <a
									href="<spring:url value='/product/update?id=${product.productId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>修改
								</a> 
								<a
									href="<spring:url value='/cellphone?id=${cell.cellphoneId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>補充規格
								</a><a
									href="<spring:url value='product.json?id=${cell.cellphoneId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>JSON
								</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<div
		style="float: left; border-style: solid; width: 200px; height: 1000px; position: absolute; top: 90px; right: 0px;">hello</div>


	<div class="footer"
		style="position: relative; left: 0; bottom: 100%; width: 100%; background-color: red; color: white; text-align: center;">
		<p>Footer</p>
	</div>
</body>
</html>
