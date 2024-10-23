<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 예제3 input(post 입력)</title>
</head>
<body>
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label><input type="text" name="nickname">
		<br>
		
		<!-- 여러값 중에 하나만 선택할 수 있는 것 -->
		<!-- 라디오 버튼 -->
		<h3>좋아하는 동물 하나를 고르세요!</h3> <!-- name태그 넣어서 하나만 선택 가능 & input type은 value를 결과로 보여줘-->
		<label>강아지<input type="radio" name="animal" value="dog"></label>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<label>사자<input type="radio" name="animal" value="lion"></label>
		<br>
		
		<!-- 셀렉트 박스 -->
		<h3>좋아하는 과일을 하나 고르세요</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="strawberry">딸기</option>
			<option>복숭아</option>
		</select>
		
		<!-- 체크박스 -->
		<h3>좋아하는 음식을 모두 고르세요</h3>
		<label>민트초코<input type="checkbox" name="foodArray" value="민트초코"></label>
		<label>하와이안피자<input type="checkbox" name="foodArray" value="하와이안피자"></label>
		<label>번데기<input type="checkbox" name="foodArray" value="번데기"></label>
		
		
		
		<br>
		<button type="sumit">입력</button>
		
	</form>




</body>
</html>