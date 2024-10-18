package com.chldbwls92.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override		// 정해진 규격의 문자열이고 우리는 그것을 사용법에 따라 쓰는 것
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// "결과물"에 대한 정보 설정 (response에 대한 설명)
		// Response Header 정보
		// character set : utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입
		// MIME 규격을 사용함
		// text/plain : 그냥 문자열!!(아무런 규격이 없는 ..)
		response.setContentType("text/plain");
		// ""안에 있는 건 오류는 안 나는데 결과가 이상하게 나올 예정이기 때문에 결과가 이상하다면 다시 잘 보기
		
		// 결과물
		// Response Body
		PrintWriter out = response.getWriter();
		
		out.println("URL Mapping 예제");
		// 이 서블릿과 path를 연결해줘야 되는데 그건 web.xml로
		
		
		// 날짜 시간정보 하는 건 중요해!
		// 현재 날짜 시간 정보 얻어오기
		Date now = new Date();
		
		out.println(now);
		
		
		// 원하는 형태의 문자열로 날짜 시간 표현하기
		// 2024년 07월 15일 17시 44분 13초
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
		
		String dateTimeString = formatter.format(now);
		// 문자열로 바꾸기
		out.println(dateTimeString);
		
	}

	
	
}
