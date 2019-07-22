
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css' type="text/css" />
</head>
<body>
	<h1 style="text-align: center">MVC Exercise</h1>
	<hr>
	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" /> <a href='welcome'>Hello
					Spring MVC</a><BR></td>
					<td width="350"><p align="left" /> <a href='welcome2'>Hello
					Spring MVC</a><BR></td>
			<td width="350"><p align="left" /> <a href='products'>查詢產品資料</a><BR>
			</td>
			<td> <a href="<spring:url value='/memberorders'/>" class="btn btn-main mt-20">檢視訂單</a></td>
			
		</tr>
		

		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" /> 
				<a href='backproducts'>back查詢所有產品資料</a><BR>
			</td>
			<td width="350"><p align="left" /> 
				<a href='products'>查詢所有產品資料</a><BR>
			</td>
			<td width="350"><p align="left" /> 
				<a href='update/stock'>更新多筆產品的庫存數量</a><BR>
			</td>
			<td width="350"><p align="left" /> 
				<a href='websocket'>try_websocket</a><BR>
			</td>
		</tr>
		
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" /> 
				<a href='queryByCategory'>分類查詢</a><BR>
			</td>
			<td width="350"><p align="left" /> 
				<a href='backaddProduct'>新增產品資料</a><BR>
			</td>
			
			<td width="350"><p align="left" /> 
				<a href='cells'>產品修改</a><BR>
			</td>
				<td width="350"><p align="left" /> 
				<a href='index2'>風格官網範本</a><BR>
				
			</td>
					<td width="350"><p align="left" /> 
				<a href='back2'>後台連結</a><BR>
				
			</td>
					<td width="350"><p align="left" /> 
				<a href='addimage'>圖片上架yyy</a><BR>
				
			</td>
			
					<td width="350"><p align="left" /> 
				<a href='signin'>註冊</a><BR>
				
			</td>
			
					<td width="350"><p align="left" /> 
				<a href='login'>登陸</a><BR>
				
			</td>
			
		</tr>
		
<!-- 		<tr height="52" bgcolor="lightblue" align="center"> -->
<!--     		<td width="350"><p align="left" />  -->
<!--     			<a href='forwardDemo'>RedirectView: forwardDemo</a><br>  -->
<!--     		</td> -->
<!-- 		    <td width="350"><p align="left" /> -->
<!-- 		    	<a href='redirectDemo'>RedirectView: redirectDemo</a><br> -->
<!--     		</td> -->
<!-- 		</tr> -->
	</table>









</body>
</html>