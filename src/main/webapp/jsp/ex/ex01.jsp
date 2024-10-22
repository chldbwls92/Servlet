<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작</title>
</head>
<body>
	<!-- class가 아닌 jsp라는 확장자를 이용하여 html 안에 java 코드 넣기 -->
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
	
	<h2>2. 리스트 다루기</h2>
	
	<%
		// 동물 이름 리스트
		List<String>animalList = new ArrayList<>();
		animalList.add("cat");
		animalList.add("dog");
	%>
	
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	<h2>3. 메소드 만들기</h2>
	
	<%!
		//Hello World 문자열을 리턴하는 메소드
		public String getHelloWorld() {
		
		return "Hello World!!";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
	
	
	
	

</body>
</html>