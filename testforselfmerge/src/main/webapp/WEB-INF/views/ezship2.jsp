<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    // === 接收電子地圖回傳值 ===
    String s_processID = request.getParameter("processID")==null?"":request.getParameter("processID");
    String s_stCate = request.getParameter("stCate")==null?"":request.getParameter("stCate");
    String s_stCode = request.getParameter("stCode")==null?"":request.getParameter("stCode");
    String s_stName = request.getParameter("stName")==null?"":request.getParameter("stName");
    String s_stAddr = request.getParameter("stAddr")==null?"":request.getParameter("stAddr");
    String s_stTel = request.getParameter("stTel")==null?"":request.getParameter("stTel");
    String s_webPara = request.getParameter("webPara")==null?"":request.getParameter("webPara");

    s_stName = new String(s_stName.getBytes("UTF-8"),"UTF-8");
    s_stAddr = new String(s_stAddr.getBytes("UTF-8"),"UTF-8");
    
%>
<html>
  <head>
    <title>電子地圖連接模擬</title>
  </head>
    
  <body>
  <p align="center"><b>電子地圖連接模擬</b></p>
 <%
    if(!s_processID.equals("")){
      out.println("<hr>");
      out.println("<<電子地圖回傳資料>><br>");
      out.println("processID = "+s_processID+"<br>");
	  out.println("stCate = "+s_stCate+"<br>");
	  out.println("stCode = "+s_stCode+"<br>");
	  out.println("stName = "+s_stName+"<br>");
	  out.println("stAddr = "+s_stAddr+"<br>");
	  out.println("stTel = "+s_stTel+"<br>");
	  out.println("webPara = "+s_webPara+"<br>");
	}
  %>
  <hr>
  <!--使用 FORM SUBMIT 轉頁到電子地圖-->
  
  <form method="post" name="simulation_from" action="https://map.ezship.com.tw/ezship_map_web.jsp">
  
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse">
      <tr>
        <td align="center">
          <input name="Submit2" type="submit" value="選擇門市"></center>
          <input type="hidden" name="suID"  value="buyer@myweb.com.tw"> <!-- 賣家登入ezShip的帳號，需開通網站串接服務 -->
          <input type="hidden" name="processID" value="${processID}"> <!-- 處理序號或訂單編號，由購物網站自行提供的編號 -->
          <input type="hidden" name="stCate" value="<%=s_stCate%>"> <!-- 取件門市通路代號。可帶空值 -->
          <input type="hidden" name="stCode" value="<%=s_stCode%>"> <!-- 取件門市代號。可帶空值 -->
          <input type="hidden" name="rtURL"  value="http://localhost:8080/testfinalproject/backezship2"><!-- 回傳網址路徑及程式名稱。請輸入完整網站路徑網址。如  -->
          <input type="hidden" name="webPara" value="simulationpage"> <!-- 網站所需額外判別資料。由開通網站自行提供，ezShip 將原值回傳。可帶空值 -->
        </td>
      </tr>
    </table>
  </form>
  <form>
  收件者姓名<input type="text" name="receiver"/><br>
收件者電話<input type="text" name="receiverphone"/><br>
運送方式<input type="text" name="method" value="EZship"><br>
運費<input type="text" name="shippingfee"value="60"> <br>
<input type="submit"/>
</form>
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
  </body>
</html>
