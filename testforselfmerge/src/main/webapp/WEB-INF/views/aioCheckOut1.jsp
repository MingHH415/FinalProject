<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${info}</title>
</head>
<body>
<center>
<h1>${info}</h1>

<form method = "GET"  action = "aioCheckOut/aioCheckOutCVS">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "超商代碼"/>
			</td>
		</tr>
	</table>
</form>

<form method = "GET"  action = "<c:url value='/aioCheckOut/aioCheckOutOneTime'/>">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "信用卡一次付清"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutWebATM">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "網路ATM"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "<%=request.getContextPath()%>">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "back to Home"/>
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>