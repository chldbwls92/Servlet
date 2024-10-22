<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문제2(get method)</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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
		// out.println() 쓸 수 있음! 그걸 쓰는 위치에 값의 형태 느낌으로 들어가는데 성능이 별로 좋지 않음
	%>
	
	
	
	<!-- 결과창 -->
	<h3>BMI 측정 결과</h3>
	<h3>당신은 <%= result %> 입니다.</h3>
	<div>BMI 수치:<%= bmi %></div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>