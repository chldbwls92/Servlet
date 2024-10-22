package com.chldbwls92.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
//		전달 받은 id와 password가 아래에 주어진 사용자 정보와 일치 하는지 확인하세요.
//		// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};
	
	
//	연습 문제
//	Post Method 2
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//	사용자 정보 확인
//	id 와 password 를 입력 받고, submit 할 수 있는 html 문서를 작성하세요.
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//id & password 받기
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		
		out.println(""
				+ "<html>"
				+ "		<head><title>로그인 결과</title></head>\n"
				+ "		<body>");
		// 일치하지 않을 경우
		if(!id.equals(userMap.get("id"))) {
			out.println("	<h3>id가 일치하지 않습니다</h3>");
		} else if (!password.equals(userMap.get("password"))) {
			out.println("	<h3>password가 일치하지 않습니다</h3>");
		} else { // 모두 충족할 경우
			out.println("	<h2>" + userMap.get("name") + "님 환영합니다.<h2>");
		}
		
		
		out.println(""
				+ "		</body>\n"
				+ "</html>");
		
		
		
//		id가 일치하지 않는 경우 id가 일치하지 않습니다. 를 보여주세요.
//		password가 일치하지 않는 경우 password가 일치하지 않습니다. 를 보여주세요
//		일치하는 경우 아래와 같이 결과 화면을 만드세요. (HTML 화면)
		
	}
	

}
