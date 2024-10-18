package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		연습 문제
//		URL mapping (web.xml) 2
		
//		시간 출력
//		현재의 시간을 아래와 같은 형태로 출력하세요.
//		web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		Content Type은 text/plain으로 설정하세요.
//		24시간 표현법으로 출력하세요.
//		출력 예시
//
//		현재 시간은 14시 52분 43초 입니다.
		
		
		// 결과물 정보 설정	
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		
		// 결과물
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다."); //데이터출력포멧
		String dateTimeString = formatter.format(now);// 문자열로 변환(출력하기 위해)
		
		// 결과물 출력
		PrintWriter out = response.getWriter();
		out.println(dateTimeString);

		
		
	}
	
	
	
	

}
