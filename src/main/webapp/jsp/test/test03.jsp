<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문제3(get method-link)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%-- 버튼 태그 아니라 a태그로 만들 것 --%>
	
	
	
	
	
	<!-- 현재 날짜 구하기 -->
	<%
		// 현재 시간과 날짜 구할 수 있는 ..
		Date now = new Date();
	 	String nowDate = now.toString();
	 	
	 	// 내가 원하는 형태로 바꿀 수 있는
		SimpleDateFormat day = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		
	 	// 문자열로 바꿔줘야돼!
		String dayString = day.format(now);
	%>
	<div vlaue="day"><%= dayString %></div>
	
	<!-- 하나의 "파라미터"로 전달받기!!!!!!
		 파라미터의 규격은 여기서 결정해서 ....
		 요 이름의 파라미터로 이걸 보여줘야지~ 이걸 보여줘야지~ -->
	
	<!--  현재 시간 구하기 -->
	<%
	// 내가 원하는 형태로 바꿀 수 있는
			SimpleDateFormat time = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
			
		 	// 문자열로 바꿔줘야돼!
			String timeString = time.format(now);
	%>
	<div value="time"><%= timeString %></div>
	
	
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>