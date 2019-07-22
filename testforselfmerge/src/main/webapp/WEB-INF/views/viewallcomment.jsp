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
賣家等級:${company.level}
賣家ID:${company.id}
賣家名稱:${company.name}<br>
<c:forEach var="comment" items="${comments}">
評論Id:${comment.commentId}<br>
評論內容:${comment.comment}<br>
評論時間:${comment.commenttime}<br>
星級:${comment.ranking}<br>

</c:forEach>


</body>
</html>