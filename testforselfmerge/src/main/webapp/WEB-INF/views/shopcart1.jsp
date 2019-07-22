<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>機不可失</title>
</head>
<style>
header {
	height: 30px;
	
}

#p1 {
	margin-bottom: auto;
	margin-top: auto;
}

.item {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: auto;
	margin-right: auto;
	border: 3px solid black;
	height: 300px;
	width: 1000px;
}

#search {
	margin-left: auto;
	margin-right: auto;
}

table{
	margin: 30px;
}

td,th{
	border:1px solid black;
	vertical-align: bottom;
	text-align:center;
	width: 200px
}

#totalPrice{
float: right;
margin-right: 60px;
}

.method{
float: right;
margin-right: 60px;
}

footer {
	hight: 200px;
}
</style>
<body>
	<header>
		<p id="p1">
			<img title="logo" src="images/phone.jpg"> <span id="search">
				<input type="text" name="search" id="search" placeholder="search">
			</span> <label>會員專區/加入會員 </label> <label> 產品總覽 </label> <label> 活動專區 </label> <label> 規格比拚 </label>
		</p>
	</header>
	<hr>
<c:forEach var='ctest' items="${shopCart}">
<c:set value="0" var="sum"  />
	<div class="item">
		<legend>購物車明細 廠商${ctest.key}的所有商品</legend>
		<table>
		<thead>
		<tr><th>品名</th>	<th>數量</th>	<th>單價</th><th>本項總價</th><th>刪除此項目</th></tr>
		</thead>
		<tbody>
		<c:forEach var='test' items='${ctest.value.cartitemmap}'>
		<tr>
		<td>${test.value.productBean.title}</td>
		<td>
		<form method="GET" action="<c:url value='/adjustnumber'/>">
		<input type="text" name="adjust" max="${test.value.productBean.stock}" value="${test.value.quantity}">
		<input type="hidden" name='adjustId' value='${test.value.productBean.productId}'/>
		<input type="submit" value='修改數量'/>	${errormsg.adjusterror}
		</form></td>
		<td>${test.value.price}</td>
		<td>${test.value.quantity*test.value.price}</td>
		<td>
		<form method="POST" action="<c:url value='/removefromcart'/>">
		<input type="hidden" name='removeId' value='${test.value.productBean.productId}'/>
		<input type="submit" value="刪除" ></form>
		</td>
		</tr>
		<c:set value="${sum +test.value.quantity*test.value.price}" var="sum"  />
		
		</c:forEach>
		</tbody>
		</table>
		<hr>
		總價格${sum}

		<div>

		<form method="post" action="<c:url value='/toshiptohome'/>">
		<input type="hidden" name="seller" value="${ctest.key}"/> 
		<input type="hidden" name="totalprice" value="${sum}"/>
		<input type="hidden" name="method" value="shiptohome"/>
		<input type="hidden" name="fee" value="120"/>
		<input type="submit" name="shiptohome"value="結帳:宅配">
		</form>
	
		<p class="method">
		<form method="post" action="<c:url value='/checkout'/>">
		<input type="hidden" name="totalprice" value="${sum}"/>
		<input type="submit" name="checkbyself" id="self" value="結帳:自行取貨">
		</form></p>
		<form method="post" action="<c:url value='/backezship'/>">
		<input type="hidden" name="seller" value="${ctest.key}"/> 
		<input type="hidden" name="totalprice" value="${sum}"/>
		<input type="hidden" name="method" value="shiptohome"/>
		<input type="hidden" name="fee" value="60"/>
		<input type="submit" name="ezship" id="self" value="結帳:EZSHIP">
		</form></p>
		<a href="<spring:url value='/products' />" class="btn btn-default">
			<span class="glyphicon-hand-left glyphicon"></span>繼續購物
			</a> 
		</div>
	</div>
</c:forEach>
	<hr>
	<footer> footer </footer>

</body>
</html>