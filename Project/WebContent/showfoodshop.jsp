<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width = device-width, initial-scale=1"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClient=2qnrv3923b"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClient=2qnrv3923b&callback=CALLBACK_FUNCTION"></script>
<title>map</title>
<style type="text/css">
	#map{
		width: 400px;
		height: 400px;
		background-color: gray;
	}
	
</style>
</head>
<body>
<h3> 음식점 이름</h3>
<hr>
<table>
<tr> <td>제목</td>  </tr>
<tr><td></td></tr>
<tr> <td>주소</td>  </tr>
<tr> <td>제목</td>  </tr>
<tr> <td>제목</td>  </tr>




</table>
<div id ="map" style="width:959px; height: 400px;"></div>
</body>
<script type="text/javascript">

var mapOptions = {
		center: new naver.maps.LatLng(37.6314233,127.052632),
		zomm:10,
		minZoom:1,
		zoomControl:true,
		zoomControlOptions:{
			position: naver.maps.Position.LEFT_BOTTOM
		}
}

var map = new naver.maps.MAP('map',{
	center: new naver.maps.LatLng(37.6314233,127.052632),
	zoom:10
});

</script>


</html>