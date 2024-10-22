<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문제1</title>
</head>
<body>
	
	<%-- JSP 스크립트 요소
	 
	- JSP
	연습 문제
	JSP 스크립트 요소
	하나의 jsp 파일을 만들고 아래 문제를 풀고 출력하세요.
	
	1. 점수들의 평균 구하기
	스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.
	 --%>
	 
	 <%
	 	int[] scores = {80, 90, 100, 95, 80};
	 	
	 	int sum = 0;
	 	for(int i = 0; i < scores.length; i++) {
	 		sum += scores[i];
	 	}
	 	double average = sum / (double)scores.length;
	 %>
	<h3>점수 평균은 <%= average %> 입니다</h3>
	
	<!-- 	2. 채점 결과
	아래 채점표로 시험점수가 몇점인지 구하세요.
	 -->
	 
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	sum = 0;
	/* for(int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) {
			sum = sum + 10;
		}
	} */
	for(String answer:scoreList) {
		
		if(answer.equals("O")) {
			sum += 10;
		}
	}
	%>
	<h3>채점 결과는 <%= sum %>점 입니다</h3>
	
	
	
<%-- 	3. 1부터 n까지의 합계를 구하는 함수
	jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
	만든 함수를 이용해서 50까지의 합의 결과를 출력하세요. --%>
	<%!
		public int sumResult(int number) {
			int result = 0;
			for(int i = 1; i <= number; i++) {
				result += i;
			}
			return result;
		}
	%>
	
	<h3>1에서 50까지의 합은 <%= sumResult(50)%></h3>
	
	
	
	<!--  4. 나이 구하기
	주어진 생년월일을 가진 사람의 나이를 구하세요.
	String birthDay = "20010820"; -->
	
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2024 - year;
	%>
	<h3><%= birthDay %>의 나이는 <%= age %>입니다</h3>


 
 
 


</body>
</html>