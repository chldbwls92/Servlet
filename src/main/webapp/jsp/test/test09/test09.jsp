<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test09</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>


	<%
	    List<Map<String, String>> list = new ArrayList<>();
	    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	    list.add(map);
	%>

	<% String category = request.getParameter("category"); 
		// 꼭 전달받아야돼 그래야 동작을 하는 거니까 %>



	
	<div id="wrap">
		<header class="justify-content-center align-items-center text-center">
			<h3 class="text-danger">Sk broadband IPTV</h3>
		</header>
		<article>
			<nav class="main-menu bg-danger text-center">
				<ul class="nav nav-fill">  <!-- nav는 href를 통해서 작동하기 때문에 name이 필요가 없어 그저 href로 작동하는 거임 -->
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp" class="nav-link text-white">전체</a></li>
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp?category=예능" class="nav-link text-white">예능</a></li>
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp?category=영화" class="nav-link text-white">영화</a></li>
					<li class="nav-item"><a href="/jsp/test/test09/test09.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
				</ul>
			</nav>
			<section>
				<table class="table text-center">
					<thead>
						<tr>
							<th>채널</th>
							<th>채널명</th>
							<th>카테고리</th>
						</tr>
					</thead>
					<tbody>
						<% for(Map<String, String> channel:list) {
							// 카테고리 값이 null이면 또는
							// 카테고리 값이 있으면 부합하는 채널 정보 보여주기
							if(category == null || category.equals(channel.get("category"))) {%>
						<tr>
							<td><%= channel.get("ch") %></td>
							<td><%= channel.get("name") %></td>
							<td><%= channel.get("category") %></td>
						</tr>
						<% }
						}%>
					</tbody>
				</table>
			</section>
		
		</article>
		<footer class="small text-secondary text-center">
			Copyright 2021. Marondal All rights reserved.
		</footer>
	
	
	</div>
	


	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>