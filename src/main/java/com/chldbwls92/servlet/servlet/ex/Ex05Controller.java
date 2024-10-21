package com.chldbwls92.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
	
	// 보안적으로 위험한 데이터를 파라미터로 전달 받을 때
	// url 로 표현하기 힘든 큰데이터나 파일을 파라미터로 전달 받을 때
	// doPost로 한다 doGet(x)
	// 파라미터가 달라진 것
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름과 생년월일을 전달받고,
		// 이름과 나이를 html로 구성
		
		// 왜 get은 괜찮을까 ? url 자체에서 Encoding을 하기 때문이다 => 범용적으로 정확하게 하나이다
		// url Encoding
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고,
		// 이름과 나이를 html로 구성
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
		out.println(""
				+ "<html>"
				+ "		<head><title>정보</title><head>"
				+ "		<body>");
		
		out.println("		<h3>이름 : " + name + "</h3> <h3>나이 : " + age + "</h3>");
		
		out.println(""
				+ "		</body>\n"
				+ "</html>\n");
		
		
		
		
	}

}
