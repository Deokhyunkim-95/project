<%@page import="com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default"%>
<%@page import="vo.FoodshopVO"%>
<%@page import="service.FoodShopServiceimpl"%>
<%@page import="service.FoodShopService"%>
<%@page import="dao.FoodshopDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regshop.jsp</title>
</head>
<body>
	<h3>�� �� �� �� ��</h3>

	<%
		String fname = request.getParameter("fname");
		String address = request.getParameter("address");
		String foodstyle = request.getParameter("foodstyle");
		String image = request.getParameter("image");
		String image_menu = request.getParameter("image_menu");
		String loc = request.getParameter("loc2");
		String discount = request.getParameter("discount");
		String holiday = request.getParameter("holiday");
		String octime = request.getParameter("octime");
		String tel = request.getParameter("tel");
		
		
		
		if(discount.equals("����x")){
			discount = "0";
		}
		
		int discount1 = Integer.parseInt(discount);
		
		if(holiday.equals("����x")){
			holiday="���߹���";
		}
		
		FoodshopDao dao = new FoodshopDao();
		FoodShopService service = new FoodShopServiceimpl(dao);
		FoodshopVO vo = new FoodshopVO();

		vo.setFname(fname);
		vo.setAddress(address);
		vo.setFoodstyle(foodstyle);
		vo.setImage(image);
		vo.setImage_menu(image_menu);
		vo.setLoc(loc);
		vo.setDiscount(discount1);
		vo.setHoliday(holiday);
		vo.setOctime(octime);
		vo.setTel(tel);
		
		int c = service.addFoodshop(vo); 
		
	%>
	�Է����� :
	<%=fname%>/<%=address%>/<%=foodstyle%>/<%=image%>/<%=image_menu%>/<%=loc%>/<%=discount1%>/<%=holiday%>/<%=octime%>/<%=tel%>
	<%=vo.toString() %>


	<%
		if (c == 0) {
	%>
	<h4>������ ��� ����</h4>
	<%
		} else {
	%>
	������ ��� ����
	<%
		}
	%>
	<p>
		<a href=" main.html">home����</a>
	</p>

</body>
</html>