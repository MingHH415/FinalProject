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
評論賣家編號:${commentorder.seller} <br>
評論賣家名稱:${CompanyBean.name}

<a href="<spring:url value='/viewcomment?sellerId=${commentorder.seller}'/>">檢視該賣家全部評價</a>


<form action="<c:url value='/comment'/>" method="POST">
給星級<input type="number" min="1" max="5" name="stars"/>
評論內容:<input type="text" name="comment"/>
<input type="submit"/>
</form>
</body>
</html>