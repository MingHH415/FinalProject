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

會員編號:${sessionScope.memberbean.seqNo}<br>
您的帳號:${sessionScope.memberbean.memberid}<br>
訂單編號:${thisorder.cartID}<br>
<c:forEach var="item" items="${allitem}">
  <img width="80"  src="<c:url value='/getPicture/${item.productBean.productId}' />" alt="" />
產品編號${item.productBean.productId}
產品名稱${item.productBean.title}
產品單價:${item.price}
產品數量${item.quantity} <br>
</c:forEach>
訂單總價${thisorder.totalprice}
</body>
</html>