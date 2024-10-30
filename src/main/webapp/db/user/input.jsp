<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<h3>사용자 추가</h3>
	
	<form method="get" action="/db/user/create">
		<label>이름 : </label><input type="text" name="name">
		<label>생년월일 : </label><input type="text" name="birthday">
		<label>이메일 : </label><input type="text" name="email">
		<button type="button">추가</button>
	</form>
	
	<!-- 요청과 응답으로 이루어지는데 독립된 요청에 대한 응답이다~ 홈태그 때문에 연결되어 있다고 느낄 수는 있으나
	사용자가 요청한 값에 대한 것이므로 알 수가 없다 -->

</body>
</html>