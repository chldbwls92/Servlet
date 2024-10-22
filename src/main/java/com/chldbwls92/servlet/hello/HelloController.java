package com.chldbwls92.servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet { //tomcat이용할때 저거 꼭 써야돼
	// 서버에서 동작하는 하나의 웹페이지를 만들거야
	
	// 특정 메소드 오버라이드 하기 위해
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
																			// 자주 발생 안 하는 건 throws로
		PrintWriter out = response.getWriter();
		out.println("Hello World!!"); //response를 통해서 실행됨
		List<String>animalList = new ArrayList<>();
	}
	

}
