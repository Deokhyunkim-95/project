<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<body lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title> Fname</title>



<link type="text/css" rel="stylesheet" href="./css/foodie.css">
<link type="text/css" rel="stylesheet" href="./css/fname.css">
<link
	href="https://fonts.googleapis.com/css?family=Merriweather&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Amatic+SC">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="./js/foodie.js"></script>

</head>

<body>
	<div id="main">

		<%@include file="/common/header.jsp"%>

	<div id="main_body">
	
		<p id="title_fname"><span>" ${fname} " &nbsp;</span>검색 결과</p>
	

		<!-- 가게 이름 검색 시 결과 -->				
			<div id="list_fname">
			
				<c:forEach var="data" items="${fname_list}">
					<div id="fname_row">

						<div>
							<img alt="${data.fname}" src="${data.image}" id="loc_img" style="width: 400px; height: 400px;">
						</div>
						<div id="fname_fname">
							<a href="Showfoodshop.do?fname=${data.fname}">${data.fname}</a>
						</div>

						<div id="fname_foodstyle">
						<span> 음식 종류: </span><a href="fname.do?foodstyle=${data.foodstyle}">${data.foodstyle}</a>
						</div>
						
						<div id="fname_loc">
						<span> 지역: </span> <a href="fname.do?loc=${data.loc}">${data.loc}</a>
						</div>
						<div id="fname_space"></div>
					</div>

				</c:forEach>
			</div>

		</div>
	<%@include file="/common/footer.jsp"%>
	</div>
</body>
</html>