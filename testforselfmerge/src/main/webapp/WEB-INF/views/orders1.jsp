<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

會員編號:${memberbean.seqNo}<br>
您的帳號:${memberbean.memberid}<br>
<c:forEach var='cart' items="${orders}" >
訂單編號:${cart.cartID} 訂單價格:${cart.totalprice} 訂單狀態${cart.status} 訂單日期${cart.orderdate}<br>
賣家:${cart.seller}
<form action="<c:url value='/received'/>">
<input type="hidden" name="orderId" value="${cart.cartID}"/>
<input type="submit" value="確認已收貨"/>
</form>
<form action="<c:url value='/membercheckdetail'/>">
<input type="hidden" name="orderId" value="${cart.cartID}"/>
<input type="submit" value="查詢此筆訂單資料"/>
</form>
<form action="<c:url value='/commentseller'/>">
<input type="hidden" name="orderId" value="${cart.cartID}"/>
<input type="submit" value="評價賣家"/>
</form>
</c:forEach>
</body>
</html>