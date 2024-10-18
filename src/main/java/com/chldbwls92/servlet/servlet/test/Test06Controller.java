package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 기본 세팅
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 가져올 것 만들기
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		
		// 문자열이기 때문에 int로 변환시켜주기
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		int addtion = number1 + number2;
		int substraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;
		
		// {"addtion":100, "substraction":20, "muliplication":102, "division":10}
		
		out.println("{\"addtion\":" + addtion + ", \"substraction\":" + substraction
				+ ", \"maltiplication\":" + multiplication + ", \"division\":" + division);
		
		
		
	}
	

}
