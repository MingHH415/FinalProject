<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
    href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>No Cart!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css'  type="text/css" />
</head>
<body>
    <div style="text-align:center" class="jumbotron">
	   <h1>Nocart</h1>
	   <p>購物車是空的</p>
    	<a href="<spring:url value='/products' />" class="btn btn-default">
		<span class="glyphicon-hand-left glyphicon"></span>返回
		</a> 
    
					
					</div>
</body>
</html>
