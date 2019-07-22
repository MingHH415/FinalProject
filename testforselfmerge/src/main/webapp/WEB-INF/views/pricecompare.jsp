<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
<!-- <link rel='stylesheet' -->
<%-- 	href='${pageContext.request.contextPath}/css/styles.css' --%>
<!-- 	type="text/css" /> -->
<script src="plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.1 -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery/jquery.js"></script>
<script>
	firstshow();
	var productDetail = []
	function firstshow() {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/comparelist",
			type : "POST",
			async : true,
			dataType : "json",
			contentType : "application/json",
			success : function(data) {
				console.log(typeof data, data)
				var names = JSON.parse(JSON.stringify(data).split(","));
				this.productDetail = data
				var txt = "";
			
				for (i in names) {
					//console.log(i + ':' + names[i].productId);
					txt += "<option value='"+i+"'>" + names[i].category
							+ "</option>";
				}
				var title = "";
				for (i in names) {
					//console.log(i + ':' + names[i].productId);
					title += "<option value='"+i+"'>" + names[i].title
							+ "</option>";
				}
				
				$("#show").append(title);
				$("#show1").append(title);
				$("#show2").append(title);
				$("#show3").append(title);
				$("#show4").append(title);
				
// 				$("#show5").append(title);
// 				$("#show6").append(title);
// 				$("#show7").append(title);
// 				$("#show8").append(title);
// 				$("#show9").append(title);
			},
			error : function(data, textStatus, errorThrown) {
				console.log(data);
			},
		}).then(response => {
			console.log(response)
			this.productDetail = response
		}).catch(error => {
			console.log(error)
		});
	}
	
// 	secondshow();
// 	var productDetail1 = []
// 	function secondshow() {
		
// 		$.ajax({
// 			url : "${pageContext.request.contextPath}/comparelist1",
// 			type : "POST",
// 			async : true,
// 			dataType : "json",
// 			contentType : "application/json",
// 			success : function(data) {
// 				var names = JSON.parse(JSON.stringify(data).split(","));
// 				this.productDetail1 = JSON.parse(JSON.stringify(data).split(","));
// 				var txt1 = "";
// // 				alert(names[0].cellphoneId)
// // 				alert(names[0].CPU)
// // 				alert(names[0].screensize)
// // 				alert(names[0].screenpixel)
// 				for (i in names) {
// // 					console.log(i + ':' + names[i].productId);
// 					txt1 += names[i].cellphoneId+"，"+names[i].screensize+"，"+names[i].screenpixel+" ";
							
// 				}
							
// // 				$("#show").append(txt1);
// 				$("#getinfo").html(txt1);		
// 			},
// 			error : function(data, textStatus, errorThrown) {
// 				console.log(data);
// 			},
// 		}).then(response => {
// 			console.log(response)
// 			this.productDetail1 = response
// 		}).catch(error => {
// 			console.log(error)
// 		});
// 	}
				
// 				var title = "";
// 				for (i in names) {
// 					//console.log(i + ':' + names[i].productId);
// 					title += "<option value='"+i+"'>" + names[i].title
// 							+ "</option>";
// 				}

						function changeImg(id) {
							console.log("getid"+id)
							var x = document.getElementById(id).value;
							
							 $('#'+id+'-img').attr("src", "<c:url value='/getPicture/" + (x) +"'/>")
							 var index = productDetail.findIndex(e => e.productId === parseInt(x))
// 							 let price = productDetail.find(e => {
// 								 console.log(e.productId, x)
// 								 return e.productId === parseInt(x)
// 							 }).price
							 console.log('product',x,productDetail[6].modelid, productDetail)
							 $('#' +id +'-price').html(productDetail[index].price)
							 $('#' +id +'-screenpixel').html(productDetail[index].screenpixel)
							 $('#' +id +'-system').html(productDetail[index].system)
							 $('#' +id +'-modelid').html(productDetail[index].modelid)
							 $('#' +id +'-weight').html(productDetail[index].weight)
							 $('#' +id +'-screensize').html(productDetail[index].screensize)
							 $('#' +id +'-rom').html(productDetail[index].rom)
						 	 $('#' +id +'-ram').html(productDetail[index].ram)
							 $('#' +id +'-color').html(productDetail[index].color)
							 $('#' +id +'-CPU').html(productDetail[index].CPU)
							 $('#' +id +'-releasedate').html(productDetail[index].releasedate)	 
										}						
					
					</script>
<style>
.table {
	/* 	outline-style: solid; */
	width: 300px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	border: 3px solid black;
}

body {
	font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica,
		sans-serif;
	color: #4f6b72;
	background: #E6EAE9;
}

a {
	color: #c75f3e;
}

#mytable {
	width: 1000px;
	padding: 0;
	margin: 0;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	border: 3px solid black;
	height: 600px;
}

caption {
	padding: 0 0 5px 0;
	width: 700px;
	font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	text-align: right;
}

th {
	font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #4f6b72;
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	border-top: 1px solid #C1DAD7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: left;
	padding: 6px 6px 6px 12px;
	background: #CAE8EA;
}

th.nobg {
	border-top: 0;
	border-left: 0;
	border-right: 1px solid #C1DAD7;
	background: none;
}

td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: #fff;
	font-size: 11px;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
}

td.alt {
	background: #F5FAFA;
	color: #797268;
}

th.spec {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #fff;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th.specalt {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #f5fafa;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #797268;
}

html>body td {
	font-size: 11px;
}
</style>

</head>
<body>
	<div>
		<div id='getinfo' class='center'></div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>navigator</h1>
			</div>
		</div>
	</section>
	<!-- 	<hr -->
	<!-- 		style="height: 1px; border: none; color: #333; background-color: #333;"> -->
	<section class="container">
		<div style="text-align: center">
			<!-- 			<table class="table"> -->
			<!-- 				<tr> -->
			<!-- 					<td>價格</td> -->
			<!-- 					<td>價格</td> -->
			<!-- 					<td>價格</td> -->
			<!-- 					<td>價格</td> -->
			<!-- 					<td>價格</td> -->
			<!-- 				</tr> -->
			<!-- 			</table> -->

			<table id="mytable">
				<tr>
					<th scope="col" abbr="Configurations">手機型號</th>
					<th scope="col" abbr="Dual 2">手機1</th>
					<th scope="col" abbr="Dual 2">手機2</th>
					<th scope="col" abbr="Dual 2">手機3</th>
					<th scope="col" abbr="Dual 2">手機4</th>
					<th scope="col" abbr="Dual 2">手機5</th>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec" style="height: 10px">選擇手機</th>
					<td>請挑選品牌: <select id='show' name="show"
						onchange="changeImg($(this).attr('id'))">
							<option value="請選擇" id='cr'>請選擇</option>
					</select>
					</td>
					<td>請挑選品牌: <select id='show1' name="show"
						onchange="changeImg($(this).attr('id'))">
							<option value="請選擇" id='cr'>請選擇</option>
					</select>
					</td>
					<td>請挑選品牌: <select id='show2' name="show"
						onchange="changeImg($(this).attr('id'))">
							<option value="請選擇" id='cr'>請選擇</option>
					</select>
					</td>
					<td>請挑選品牌: <select id='show3' name="show"
						onchange="changeImg($(this).attr('id'))">
							<option value="請選擇" id='cr'>請選擇</option>
					</select>
					</td>
					<td>請挑選品牌: <select id='show4' name="show"
						onchange="changeImg($(this).attr('id'))">
							<option value="請選擇" id='cr'>請選擇</option>
					</select>
					</td>
				</tr>
<!-- 				<tr> -->
<!-- 					<th scope="row" abbr="Model" class="spec" style="height: 10px">選擇品牌</th> -->
<!-- 					<td>請挑選品牌: <select id='show5' name="show" -->
<!-- 						onchange="changeImg($(this).attr('id'))"> -->
<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
<!-- 					</select> -->
<!-- 					</td> -->
<!-- 					<td>請挑選品牌: <select id='show6' name="show" -->
<!-- 						onchange="changeImg($(this).attr('id'))"> -->
<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
<!-- 					</select> -->
<!-- 					</td> -->
<!-- 					<td>請挑選品牌: <select id='show7' name="show" -->
<!-- 						onchange="changeImg($(this).attr('id'))"> -->
<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
<!-- 					</select> -->
<!-- 					</td> -->
<!-- 					<td>請挑選品牌: <select id='show8' name="show" -->
<!-- 						onchange="changeImg($(this).attr('id'))"> -->
<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
<!-- 					</select> -->
<!-- 					</td> -->
<!-- 					<td>請挑選品牌: <select id='show9' name="show" -->
<!-- 						onchange="changeImg($(this).attr('id'))"> -->
<!-- 							<option value="請選擇" id='cr'>請選擇</option> -->
<!-- 					</select> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				<tr>
					<th scope="row" abbr="Model" class="spec">產品圖片</th>

					<td><div>					
							<img id="show-img" width='120px' height='100px'
								src="<c:url value='/getPicture/${product.productId}'/>" />
								
						</div></td>
					<td><div>
							<img id="show1-img" width='120px' height='100px'
								src="<c:url value='/getPicture/${product1.productId}'/>" />
						</div></td>
					<td><div>
							<img id="show2-img" width='120px' height='100px'
								src="<c:url value='/getPicture/${product.productId}'/>" />
						</div></td>
					<td><div>
							<img id="show3-img" width='120px' height='100px'
								src="<c:url value='/getPicture/${product.productId}'/>" />
						</div></td>

					<td><div>
							<img id="show4-img" width='120px' height='100px'
								src="<c:url value='/getPicture/${product.productId}'/>" />
						</div></td>


				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">產品價格</th>
					<td class="alt" id="show-price"></td>
					<td class="alt" id="show1-price"></td>
					<td class="alt" id="show2-price"></td>
					<td class="alt" id="show3-price"></td>
					<td class="alt" id="show4-price"></td>
					<%-- 					<td id='priceTD'>${product.price}</td> --%>
					<%-- 					<td>${product.price}</td> --%>
					<!-- 					<th scope="row" abbr="G5 Processor" class="specalt"></th> -->

				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">產品型號</th>
					<td class="alt" id="show-modelid"></td>
					<td class="alt" id="show1-modelid"></td>
					<td class="alt" id="show2-modelid"></td>
					<td class="alt" id="show3-modelid"></td>
					<td class="alt" id="show4-modelid"></td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">產品重量</th>
					<td class="alt" id="show-weight"></td>
					<td class="alt" id="show1-weight"></td>
					<td class="alt" id="show2-weight"></td>
					<td class="alt" id="show3-weight"></td>
					<td class="alt" id="show4-weight"></td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">銀幕尺寸</th>
					<td class="alt" id="show-screensize">${product.screensize}</td>
					<td class="alt" id="show1-screensize">${product.screensize}</td>
					<td class="alt" id="show2-screensize">${product.screensize}</td>
					<td class="alt" id="show3-screensize">${product.screensize}</td>
					<td class="alt" id="show4-screensize">${product.screensize}</td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">ROM</th>
					<td class="alt" id="show-rom">${product.rom}</td>
					<td class="alt" id="show1-rom">${product.rom}</td>
					<td class="alt" id="show2-rom">${product.rom}</td>
					<td class="alt" id="show3-rom">${product.rom}</td>
					<td class="alt" id="show4-rom">${product.rom}</td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">RAM</th>
					<td class="alt" id="show-ram">${product.ram}</td>
					<td class="alt" id="show1-ram">${product.ram}</td>
					<td class="alt" id="show2-ram">${product.ram}</td>
					<td class="alt" id="show3-ram">${product.ram}</td>
					<td class="alt" id="show4-ram">${product.ram}</td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">color</th>
					<td class="alt" id="show-color"></td>
					<td class="alt" id="show1-color"></td>
					<td class="alt" id="show2-color"></td>
					<td class="alt" id="show3-color"></td>
					<td class="alt" id="show4-color"></td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">螢幕解析度</th>
					<td class="alt" id="show-screenpixel">${product.screenpixel}</td>
					<td class="alt" id="show1-screenpixel">${product.screenpixel}</td>
					<td class="alt" id="show2-screenpixel">${product.screenpixel}</td>
					<td class="alt" id="show3-screenpixel">${product.screenpixel}</td>
					<td class="alt" id="show4-screenpixel">${product.screenpixel}</td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">系統</th>
					<td class="alt" id="show-system">${product.system}</td>
					<td class="alt" id="show1-system">${product.system}</td>
					<td class="alt" id="show2-system">${product.system}</td>
					<td class="alt" id="show3-system">${product.system}</td>
					<td class="alt" id="show4-system">${product.system}</td>
				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">CPU</th>
					<td class="alt" id="show-CPU"></td>
					<td class="alt" id="show1-CPU"></td>
					<td class="alt" id="show2-CPU"></td>
					<td class="alt" id="show3-CPU"></td>
					<td class="alt" id="show4-CPU"></td>

				</tr>
				<tr>
					<th scope="row" abbr="Model" class="spec">釋出時間</th>
					<td class="alt" id="show-releasedate">${product.releasedate}</td>
					<td class="alt" id="show1-releasedate">${product.releasedate}</td>
					<td class="alt" id="show2-releasedate">${product.releasedate}</td>
					<td class="alt" id="show3-releasedate">${product.releasedate}</td>
					<td class="alt" id="show4-releasedate">${product.releasedate}</td>
				</tr>
			</table>
		</div>
	</section>
	
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

