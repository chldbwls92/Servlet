<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- 자바 유틸 다 포함됨 but 실제로는 다 따로 import 해야돼 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 예제4(자료구조 다루기)</title>
</head>
<body>

	<%
		// 과일이름 리스트
		List<String> fruitList = new ArrayList();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		// 테이블태그로(tr) 하나씩 넣고싶어!
		// 태그를 위아래로 감싸는 형식으로 넣으면 돼
		
	%>
	
	
	<table border="1">
	<% for(String fruit:fruitList) { %>
		<tr>
			<td><%= fruit %></td>
		</tr>
	<% } %>
	</table>
	<!-- 페이지 소스보기로 확인해보기! -->
	
	<%
	// 리스트([])로 맵({}) 저장하기
	// [{"국어":90, "수학":95, "영어":80}, {"국어":100, "수학":90, "영어":70}]
		
		Map<String,Integer> score1 = new HashMap<>();
		score1.put("국어",90);
		score1.put("수학",95);
		score1.put("영어",80);
		
		Map<String,Integer> score2 = new HashMap<>();
		score2.put("국어",100);
		score2.put("수학",90);
		score2.put("영어",70);
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		scoreList.add(score1);
		scoreList.add(score2);
	
	%>
	
	<!-- 리스트를 통해 테이블로 표현할 거야 -->
	<table border="1">
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
			</tr>
		</thead>
		<tbody>
		<% for(Map<String,Integer> score:scoreList) { %>
			<tr>
				<td><%= score.get("국어") %></td>
				<td><%= score.get("수학") %></td>
				<td><%= score.get("영어") %></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	
	



</body>
</html>