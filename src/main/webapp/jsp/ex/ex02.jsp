<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 배우기 2(get method)</title>
</head>
<body>

	<%
		// 이름 생년월일 전달 받고, 이름과 나이를 보여주는 테이블을 만든다.
				// 파라미터로 전달받은 값!(사용자에게 입력하라고 할 수 없으니 input 만들어서 입력받기)
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0, 4));
		
		int age = 2024 - year;
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= age %></td>
		</tr>
	
	</table>
	
	
	
	
	
	



</body>
</html>