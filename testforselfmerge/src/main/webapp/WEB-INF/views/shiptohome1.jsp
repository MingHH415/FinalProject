<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 訂單編號:<h1>${orderID}</h1> --%>



<div class="item">
	<form method="post" action="<c:url value='/checkout'/>">
	收件者姓名<input type="text" name="receiver"/><br>	
收件者電話<input type="text" name="receiverphone"/><br>
地址<input type="text" name="address"/><br>
運送方式<input type="text" name="method" value="宅配"><br>
運費<input type="text" name="shippingfee"value="120"> <br>
<br><br>

		<legend>購物車明細廠商 ${sellerID}的所有商品</legend>
		<table>
		<thead>
		<tr><th>品名</th>	<th>數量</th>	<th>單價</th><th>本項總價</th></tr>
		</thead>
		<tbody>
		<c:forEach var='test' items='${now.cartitemmap}'>
		<tr>
		<td>${test.value.productBean.title}</td>
		<td>
		<input type="text" name="adjust" value="${test.value.quantity}">
		<input type="hidden" name='adjustId' value='${test.value.productBean.productId}'/>
		</td>
		<td>${test.value.price}</td>
		<td>${test.value.quantity*test.value.price}</td>
		<td>
		<input type="hidden" name='removeId' value='${test.value.productBean.productId}'/>
		</td>
		</tr>
		<c:set value="${sum +test.value.quantity*test.value.price}" var="sum"/>
		</c:forEach>
		</tbody>
		</table>
		<hr>
		<form>
		<tr><th>付款方式</th></tr>
		<tr><td>先行支付</td><td><input type="radio" name="paymethod" value="1"/></td></tr>
		<tr><td>貨到付款</td><in><input type="radio" name="paymethod" value="0"/></tr>
		</form>
		<p>total price =${sum+120}</p>
		<input type="hidden" name="totalprice" value="${sum+120}"/>
		<input type="submit" /><br>
</form>
</div>
</body>
</html>