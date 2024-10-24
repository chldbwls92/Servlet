<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문제4</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<!-- 연습 문제
	POST Method 1
	
	사칙연산
	두 수와 연산자를 입력 받아서 계산해주는 기능을 만드세요.
	두 수와 연산자를 선택할 수 있는 input 과 selectbox form을 만드세요.
	연산자는 +, -, X, / 사칙연산 중에 하나를 선택하도록 하세요.
	Post method 를 사용해서 submit 하세요. -->
	
	
	 <%
	 	// 입력받기
	 	int number1 = Integer.parseInt(request.getParameter("number1"));
	 	String operator = request.getParameter("operator");
	 	int number2 = Integer.parseInt(request.getParameter("number2"));

	 	// 계산결과
	 	double result = 0;
		if(operator.equals("+")) {
			result = number1 + number2;
		} else if(operator.equals("-")) {
			result = number1 - number2;
		} else if(operator.equals("X")) {
			result = number1 * number2;
		} else {
			result = number1 / (double)number2;
		}
	 	
	 	
	%>
		
		
		
	
	<biv>
		<h3>계산 결과</h3>
		<div class= "display-1">
			<%= number1 %> <%= operator %> <%= number2 %> =<span class="text-primary"><%= result %></span>
		</div>
	
	</biv>
	




	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>