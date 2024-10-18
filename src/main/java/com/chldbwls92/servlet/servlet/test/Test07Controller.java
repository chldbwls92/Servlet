package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
//	연습 문제
//	Get Method 와 form 1
//	주문하기
//	주소, 결제카드, 가격 정보를 전달 받고, 결과 화면을 보여주는 페이지를 만드세요.
//	아래 조건에 해당 할 경우 제시된 안내 문구를 표시하세요.
//	전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
//	전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		
		// 정보 전달받기
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		if(!address.contains("서울시")) {
			out.println("		<h3>배달 불가 지역입니다</h3>");
		} else if(card.equals("신한카드")) {
			out.println("		<h3>결제 불가 카드입니다</h3>");
		} else {
			out.println(""
					+ "<html>"
					+ "		<head><title>주문결과</title>"
					+ "/hr"
					+ "		<h3>" + address + " 배달 준비중</h3><head>\n"
					+ "		<body> 결제금액 : " + price + "원 </body>"
					+ "</html>");
		}
		
		
	}
	
}
