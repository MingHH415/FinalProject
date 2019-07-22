<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;
}
</style>
<title>Products</title>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
</head>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">
				<spring:message code='spring.addProduct.form.addProductData.label' />
			</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">

		<section>
					<div class="container">
						<h1 style="text-align: left; font-size: 20px;">新增產品資料</h1>
					</div>


					<!--       三個地方要完全一樣 -->
					<form:form method='POST' modelAttribute="productBean"
						class='form-horizontal' enctype="multipart/form-data">
						<fieldset>
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='title'>
									標題 </label>
								<div class="col-lg-10">
									<form:input id="title" path="title" type='text'
										class='enjoy-css' required="required" />
								</div>
							</div>
						

							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="category">
									廠牌 </label>
								<div class='col-lg-10'>
									<form:input id="category" path="category" type='text'
										class='enjoy-css' required="required" />
								</div>
							</div>
							
								<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="modelid">
									型號 </label>
								<div class='col-lg-10'>
									<form:input id="modelid" path="modelid" type='text'
										class='enjoy-css' required="required" />
								</div>
							</div>
							
											
							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="weight">
									重量 </label>
								<div class='col-lg-10'>
									<form:input id="weight" path="weight" type='text'
										class='enjoy-css' required="required" />
								</div>
							</div>
									<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="color">
									顏色 </label>
								<div class='col-lg-10'>
									<form:input id="color" path="color" type='text'
										class='enjoy-css' required="required" />
								</div>
							</div>
								<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='CPU'
								>CPU核心  
								</label>
								<div class="col-lg-10">
<%-- 						<form:input id="CPU" path="CPU" type='text' class='form:input-large' /> --%>
 
									<form:select id="CPU" path="CPU" class='form:input-large'>
										<option>1</option>
										<option>2</option>
										<option>4</option>
										<option>8</option>
										<option>16</option>
										<option>32</option>
									</form:select>
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='rom'>ROM </label>
								<div class="col-lg-10">
<%-- 									<form:input id="rom" path="rom" type='text'class='form:input-large' /> --%>
									<form:select id="rom" path="rom" class='form:input-large'>
										<option>1 GB</option>
										<option>2 GB</option>
										<option>4 GB</option>
										<option>8 GB</option>
										<option>16 GB</option>
									</form:select>
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='ram'>
									RAM </label>
								<div class="col-lg-10">
<%-- 									<form:input id="ram" path="ram" type='text' --%>
<%-- 										class='form:input-large' /> --%>
										<form:select id="ram" path="ram" class='form:input-large'>
										<option>32 GB</option>
										<option>64 GB</option>
										<option>128 GB</option>
										<option>256 GB</option>
										<option>512 GB</option>
									</form:select>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='releasedate'>
									上市日期</label>
								<div class="col-lg-10">
									<form:input id="releasedate" path="releasedate" type='month'
										class='form:input-large' />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='screenpixel'>
									相機畫素 </label>
								<div class="col-lg-10">
<%-- 									<form:input id="screenpixel" path="screenpixel" type='text' --%>
<%-- 										class='form:input-large' /> --%>
										<form:select id="screenpixel" path="screenpixel" class='form:input-large'>
										<option>600萬</option>
										<option>800萬</option>
										<option>1000萬</option>
										<option>1200萬</option>
										<option>1400萬</option>
										<option>1600萬</option>
										<option>1800萬</option>
										<option>2000萬</option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='screensize'>
									螢幕尺寸 </label>
								<div class="col-lg-10">
<%-- 									<form:input id="screensize" path="screensize" type='text' --%>
<%-- 										class='form:input-large' /> --%>
									<form:select id="screensize" path="screensize" class='form:input-large'>
										<option>4.5 吋</option>
										<option>4.7 吋</option>
										<option>5.0 吋</option>
										<option>5.5 吋</option>
										<option>5.8 吋</option>
										<option>6.0 吋</option>
										<option>6.3 吋</option>
										<option>6.5 吋</option>
										<option>6.7 吋</option>
										<option>Other</option>
									</form:select>
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='brand'>
									嵌入影片 </label>
								<div class="col-lg-10">
								
									<form:input id="brand" path="brand" type='text'
										class='form:input-large' />
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-2" for='system'>
									作業系統 </label>
								<div class="col-lg-10">
<%-- 									<form:input id="system" path="system" type='text' --%>
<%-- 										class='form:input-large' /> --%>
								<form:select id="system" path="system" class='form:input-large'>
										<option>IOS</option>
										<option>Android</option>
										<option>Windows</option>
										<option>Other</option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="price">
									價格 </label>
								<div class='col-lg-10'>
									<form:input id="price" path="price" type='number' min="1"
										max="100000" placeholder="價格範圍 1 ~ 100,000" class='enjoy-css'
										style="width:195px"></form:input>
								</div>
							</div>

							
							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="stock">
									庫存 </label>
								<div class='col-lg-10'>
									<form:input id="stock" path="stock" type='number' min="1"
										max="999" placeholder="庫存範圍 1 ~ 999" class='enjoy-css'
										style="width:195px" />
								</div>
							</div>


							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2'
									for="productImage"> 圖片 </label>
								<div class='col-lg-10'>
									<form:input id="productImage" path="productImage" type='file'
										class='enjoy-css' accept="image/*" />
								</div>
							</div>
							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2'
									for="productImage2"> 圖片2 </label>
								<div class='col-lg-10'>
									<form:input id="productImage2" path="productImage2" type='file'
										class='enjoy-css' accept="image/*" />
								</div>
							</div>
							<div class="form-group">
								<label class='control-label col-lg-2 col-lg-2' for="author">
									內文:</label>
								<div class='col-lg-10'>
									<textarea name="author" Cols="25" Rows="5" class="enjoy-css"
										onKeyUp="javascript:checkWord(this);"
										onMouseDown="javascript:checkWord(this);" name="content"></textarea>
								</div>

							</div>

							<div class="form-group">
								<div class='col-lg-offset-2 col-lg-10'>
									<div>
										還可以輸入<span style="font-family: Georgia; font-size: 8px;"
											id="wordCheck">128</span>個字
									</div>
									<br> <input id="btnAdd" type='submit'
										class='btn btn-primary' value="新增商品" />
								</div>
							</div>
						</fieldset>
					</form:form>
				</section>
			
	

</body>
</html>
