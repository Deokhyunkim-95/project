<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="json_jdbc.JsonDB"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width = device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<title>map</title>
<style type="text/css">
#map {
	width: 400px;
	height: 400px;
}
</style>
</head>
<body>
	<c:forEach var="data" items="${showfoodshop}">
		<h3>${data.fname}</h3>
	</c:forEach>
	<input type="button" value="리뷰작성">
	<input type="button" value="리뷰보기">
	<hr>
	<table>
		<c:forEach var="data" items="${showfoodshop}">

			<tr>
				<td>주소</td>
				<td>${data.address}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${data.tel}</td>
			</tr>
			<tr>
				<td>음식종류</td>
				<td>${data.foodstyle}</td>
			</tr>
			<tr>
				<td>영업시간</td>
				<td>${data.octime}</td>
			</tr>
			<tr>
				<td>휴일</td>
				<td>${data.octime}</td>
			</tr>
			<tr>
				<td>위도</td>
				<td>${data.latitude}</td>
			</tr>
			<tr>
				<td>경도</td>
				<td>${data.longitude}</td>
			</tr>

		</c:forEach>
	</table>

	<div id="map" style="width: 959px; height: 400px;">
	</div>

</body>

<script>
	let xname;
	let xlat;
	let xlng;

	navigator.geolocation.getCurrentPosition(initmap);
	
	function initmap() {
		$.ajax({
			url : "showfoodsdata.jsp?fname=${param.fname}",
			dataType : "json",
			type : "get",
			async: false,
			success : function(data) {

				
				xname = data.fname;
				xlat = data.latitude;
				xlng = data.longitude;
				
				xlat = parseFloat(xlat);
				xlng = parseFloat(xlng);
				/* alert("xlat : "+typeof xlat);
				alert(" xlng : "+ typeof xlng); */
				
				
				console.log(data);
				console.log(xname);
				console.log("xlat"+xlat);
				console.log("xlng"+xlng);
				
			},
			error : function(error) {
				alert("에러..." + error)
			}
		});
		
		console.log("xlat1"+xlat);
		console.log("xlng1"+xlng);
		
		 let p = { 
			lat : xlat,
			lng : xlng
			//lat : ${data.latitude},
			//lng : ${data.longitude}
		};

		let map = new google.maps.Map(document.getElementById("map"), {
			zoom : 14,
			center : p
		});

		let marker = new google.maps.Marker({
			position : p,
			map : map,
			label : xname
		}); 
	}
</script>

</html>