<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>이름, 생년월일 입력</h3>
	
	<form method="get" action="/jsp/ex/ex02.jsp"> <!-- 대상에 대한 (앞서 정했던)파라미터 이름 넣어주면 됨 -->
		<label>이름 </label> <input type="text" name="name">
		<label>생년월일 </label> <input type="text" name="birthday">
		<button type="submit">입력</button>
	</form>
	



</body>
</html>