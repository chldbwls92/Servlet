<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 예제3(post method)</title>
</head>
<body>

	<%
		String nickname = request.getParameter("nickname");
	
		// 좋아하는 하나의 동물 이름을 전달 받고 html에 보여준다.
		// 고양이, 강아지, 사자 ( 정해진 것 )
		String animal = request.getParameter("animal");
		
		// 좋아하는 과일 이름 하나를 전달받고 html에 보여준다
		// 바나나, 딸기, 복숭아
		String fruit = request.getParameter("fruit");
		
		// 좋아하는 음식을 "모두" 전달받고, html에 보여준다
		// 민트초코, 하와이안 피자, 번데기
		String[] foodArray = request.getParameterValues("food");
						// getParameter는 하나만 전달해줌				
		String foodString = ""; // null이랑 다름		
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " ";
		}
		
	%>

	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= foodString %></h3>
	
	




</body>
</html>