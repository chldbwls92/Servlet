package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
//	연습 문제
//	URL mapping (web.xml) 1
	
//	오늘 날짜 출력
//	오늘 날짜를 아래와 같이 출력하세요.
//	web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//	Content Type은 text/plain으로 설정하세요.
//	출력 예시
//
//	오늘의 날짜는 2021년 5월 20일
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 결과물 세팅
		// Response Header
		response.setCharacterEncoding("utf-8"); // character set
		response.setContentType("text/plain"); // 데이터타입 mime
		
		
		// 결과물
		// Response body
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜는 yyyy년 M월 dd일"); // 데이터출력 포멧
		
		String dateTimeString = formatter.format(now);
		
		// 결과물 출력
		PrintWriter out = response.getWriter();
		
		out.println(dateTimeString);
		// out.println("오늘의 날짜는" + dateTimeString);  도 가능
	}
	
	

}
