package com.chldbwls92.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest reqest, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// used_goods 테이블의 모든 행을 조회해서 결과를 response에 담기
		
		
		try {
			// database 접속 (jdbc)를 통해 보다 편리하게 접속 할 수 있음
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 접속 주소, 포트, id password
			String url = "jdbc:mysql://localhost:3306/chldbwls";
			String id = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, id, password);
			// 이것을 통해 접속, 활용
			
			// 쿼리 수행
			Statement statement = connection.createStatement();
			
			// 조회 결과를 다루기 위한! 결과 return
			ResultSet resultSet = statement.executeQuery("SELECT * FROM `used_goods`;");
			// 이터레이터랑 비슷해
			// 한 행을 가르키고, 가르키는 대상으로부터 값을 가져옴
			
			// 쿼리 수행 결과 다루기
			while(resultSet.next()) {
				// 제목, 가격, 설명
				// 제ㅗㄱ : ~~ 가격 : ~~
				String title = resultSet.getString("title");
				resultSet.getInt("price");
				String introduce = resultSet.getString("description");
				
				out.println("제목 : " + title + " 가격 : " + price + "원 설명 : " + introduce );
				
				
			}
			
			statement.close(); // 다 썻다는 것 알려주기
			statement = connection.createStatement(); // 새로운 스테이트먼트
			
			// 사용한 후에 주석처리 하기 ! 왜냐면 새로고침 할 때마다 추가됨
			String query = "INSERT INTO `used_goods`\r\n"
					+ "(`sellerId`, `title`, `price`, `discripdion)`\r\n"
					+ "VALUE\r\n"
					+"(3, '고양이 간식 팝니다', 2000, '우리집 고양이가 안 먹어서 팔아요');";
			
			// 실행된 행의 개수 리턴
			int count = statement.executeUpdate(query);		
			
			out.println("삽입결과 : " + count);
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		// 쿼리 수행 결과 다루기
		
		
		
		
	}
	
	
	
	
	
}
