package com.chldbwls92.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chldbwls92.servlet.common.MysqlService;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteControler extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 뭐 삭제하고 싶은지 파라미터로 받기(id)가 변하지 않기 때문에 id로 받는다
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance(); // 객체가 직접 생성되는 게 아니라 클래스이름을 이용해서 만들어진 것을 가져와서 사용하기
									// 클래스에서 관리하는 놈을 얻어다 쓴다~
		mysqlService.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/favorite/list.jsp");
		
		
		
		
		
	}

}
