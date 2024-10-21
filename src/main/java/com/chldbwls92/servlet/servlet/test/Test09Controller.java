package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
//		연습 문제
//		Post Method 1
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		입사 지원
//		이름과 자기소개서 내용을 전달 받고, 입사 지원 결과를 보여주는 페이지를 만드세요.
//		파라미터에 맞춰서 method를 선택하세요.
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름 & 자기소개서 내용
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		// 결과
		out.println(""
				+ "<html>"
				+ "		<head><title>지원결과</title></head>\n"
				+ " 	<body>"
				+ "				<h3>" + name + "님 지원이 완료되었습니다</h3>\n"
				+ "				<hr>"
				+ " 			지원내용\n"
				+ "				<div>" + introduce + "</div>\n"
				+"		</body>"
				+ "</html>");
		
		
		
	}

}
