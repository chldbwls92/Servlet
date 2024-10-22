<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문제2(get method)</title>
</head>
<body>
	<!-- 연습 문제
	Get Method - form 태그
	BMI 수치
	키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요.
	키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요. -->
	
	<%
		// 파라미터로 입력받기(문자로밖에 못 받음)
		String stringHeight = request.getParameter("height");
		String stringWeight = request.getParameter("weight");
		
		// 문자로 받았으니까 int로 변환시켜주기
		int height = Integer.parseInt(stringHeight);
		int weight = Integer.parseInt(stringWeight);
	
		//bmi 구하기
		//BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		
		// 결과 도출하기
		String result;
		if(bmi < 18.5) {
			result = "저체중";
		} else if(bmi < 25) {
			result = "정상";
		} else if(bmi < 30) {
			result = "과체중";
		} else {
			result = "비만";
		}
	%>
	
	
	
	<!-- 결과창 -->
	<h3>BMI 측정 결과</h3>
	<h3>당신은 <%= result %> 입니다.</h3>
	<div>BMI 수치:<%= bmi %></div>
	
	

</body>
</html>