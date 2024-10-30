package com.chldbwls92.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chldbwls92.servlet.common.MysqlService;

@WebServlet("/db/user/create")
public class Test01Controller extends HttpServlet {
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// used_goods 테이블의 모든 행을 조회해서 결과를 response에 담기
		

		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		// 쿼리 에러가 있으면 익셉션 발생 ! 
		List<Map<String, Object>> realEstateList = mysqlService.select("SELECT * FROM `real_estate`;");
				
		for(Map<String, Object> realEstate:realEstateList) {
			String address = (String)realEstate.get("address");
			int area = (Integer)realEstate.get("area");
			
			out.println("매물 주소 : " + address + ", 면적 : " + area);
		}
		
		mysqlService.disconnect();
				
	}
}
