package com.chldbwls92.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chldbwls92.servlet.common.MysqlService;

@WebServlet("/db/favorite/create")
public class FavoriteInsertController extends HttpServlet {
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이걸로 요청할 거야
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = new MysqlService();
				
		mysqlService.connect();
		
		String query = "INSERT INTO `favorite` (`name`, `url`)\r\n"
				+ "VALUES\r\n"
				+ "('" + site + "', '" + url + "');";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/favorite/list.jsp");
		
		
	}
}
