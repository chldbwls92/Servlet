<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작</title>
</head>
<body>

	<h2>1. 기본 문법</h2>
	<!-- html 주석 -->
	<%-- jsp 주석(은 사라짐) jsp 문법은 브라우저에서 인식을 못 해(서버에서 처리하고 다 없앰) --%>
	<!-- 서버에서만 사용하고 싶으면 jsp, 브라우저에서 확인되면 좋겠으면 html -->
	
	<%-- 1부터 10까지의 합을 h3태그로 구성 --%>
	<% 
		int sum = 0;
		for(int i = 0; i < 10; i++) {
			sum += i;
		}
	%>
		<%-- 값을 의미하는 것 넣기 --%>
	<h3>합계 : <%= sum %></h3>
							<%-- 넣고싶은 위치 어디든 넣을 수 있음(java문법 상관 x) --%>
	<input type="text" value="<%= sum %>">
		<%-- 연산도 가능 --%>
	<div><%= sum * 2 %></div>
	
	

</body>
</html>