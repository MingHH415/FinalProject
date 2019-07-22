<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.1 -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery/jquery.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
 	firstshow();
    function firstshow() {
		
		$.ajax({
					url : "${pageContext.request.contextPath}/advertiselistajax",
					type : "POST",
					async : true,
					dataType:"json",						
					contentType : "application/json",
					success : function(data) {
						var names=JSON.parse(JSON.stringify(data).split(","));
						var txt = "";
						
						for (i in names) {
							console.log(i + ':' + names[i].productId);
							txt += "<option value='"+i+"'>"+names[i].productId
									+ "</option>";
						}
						$("#show").append(txt);
					},
					error : function(data, textStatus, errorThrown) {
						console.log(data);
					},
				});
	}
 	$(document).ready(function(){
  
	function catchSelect1(){
		var txt=$("#show:selected").text();
		if(txt=='請選擇'){
			var clean=null
			$("#show2").html(clean);
		}
	}

		$("#show").change(function() {
// 			catchSelect1();
			search();
			console.log("show:selected"+ $("#show:selected").text());
		})

		function search() {
			var txt = $("#show :selected").text();
			$.ajax({
						url : "${pageContext.request.contextPath}/adv/"+txt,
						type : "GET",
						async : true,
						contentType : "application/json",
						success : function(data) {
// 							alert(data)
//  						var names=(JSON.stringify(data).split(","))
//  							alert(names[1])
// 							var names=JSON.stringify(data).split(",")
							var txt ="";
							txt =data.productId;		
// 							data[0].productId
 							$("#show2").html(txt);
						
						}
					});
		}		
	})	
	
	// 							var names = JSON.parse(
// 									JSON.stringify(data).split(
// 									","));
// 							alert(names.productId)
// // 							alert(names.price)
//  				console.log(data);
 				
//  				$.each(data)
// 				var txt="";
//  				$.each(data, function(key, value) {
//  					str+="<tr>"
//  					for(i in value){
//  						str += "<td>"+value[i]+"</td></tr>";
//  					}

// 					for(i in data){
// 						for(i in data[i]){
// 							data[i][i];
// 						})
// 					}
// 					alert(data[i][i];;
// });



// secondshow();
// 	var productDetail1 = []
// 	function secondshow() {
		
// 		$.ajax({
// 			url : "${pageContext.request.contextPath}/comparelist1",
// 			type : "POST",
// 			async : true,
// 			dataType : "json",
// 			contentType : "application/json",
// 			success : function(data) {
// 				var names = JSON.parse(JSON.stringify(data).split(","));
// 				this.productDetail = JSON.parse(JSON.stringify(data).split(","));
// 				var txt1 = "";
// 				for (i in names) {
// 					//console.log(i + ':' + names[i].productId);
// 					txt += "<option value='"+i+"'>" + names[i].category
// 							+ "</option>";
// 				}
// 				var title = "";
// 				for (i in names) {
// 					//console.log(i + ':' + names[i].productId);
// 					title += "<option value='"+i+"'>" + names[i].title
// 							+ "</option>";
// 				}
				
// 				$("#show").append(txt);
// 				$("#show1").append(txt);
// 				$("#show2").append(txt);
// 				$("#show3").append(txt);
// 				$("#show4").append(txt);
				
// 				$("#show5").append(title);
// 				$("#show6").append(title);
// 				$("#show7").append(title);
// 				$("#show8").append(title);
// 				$("#show9").append(title);
// 			},
// 			error : function(data, textStatus, errorThrown) {
// 				console.log(data);
// 			},
// 		}).then(response => {
// 			console.log(response)
// 			this.productDetail = response
// 		}).catch(error => {
// 			console.log(error)
// 		});
// 	}
</script>
</head>
<body>
	<div class='center'>
		請挑選品牌: <select id='show' name="show">
		    <option value ="請選擇" >請選擇</option>
		    </select>
		<hr>
		<!-- 顯示書籍資料的區域 -->
		<div id='show2' class='center'></div>
	</div>	
</body>
</html>