package com.chldbwls92.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {
	
	
	// 이 클래스 객체를 관리할 변수가 필요해! = 멤버변수
	// 처음에 값이 없다는 것을 명확하게 알려주기 위해 null
	
	// 클래스를 설계하는 입장에서
	// 해당 클래스에 대한 객체 생성을 직접 관리하고,
	// "하나의 객체"를 공유해서 사용하도록 구성한다. 무분별하게 생성되면 안 되기 때문에!
	// Singelton pattern (Design pattern)
	private static MysqlService mysqlService = null;
	
	private Connection connection;
	
	// 자신 클래스에 대한 객체를 돌려주는 메소드
	// static : 객체 생성 없이 사용하도록 하는 메소드, 멤버 변수
	// 객체가 생성이 돼야 멤버 변수를 사용할 수 있기 때문에 멤버변수도 static으로 바꿔주면 오류 안 남
	public static MysqlService getInstance() {
		if(mysqlService == null) { // 이 조건문이 없으면 계속 생성하기 때문에 null일 경우만
			mysqlService = new MysqlService(); // 자기 자신의 메소드 안에서 생성! 사용하는 곳에서 생성x
		}
		
		return mysqlService;  //여기서 관리하고 있는 멤버변수 리턴
	}
	
	
	// 접속 기능
	public void connect() {
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());			
			// 접속 주소, 포트, id, password
			String url = "jdbc:mysql://localhost:3306/chldbwls";
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
	
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	// 접속 해제 기능
	public void disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 조회 쿼리 수행 기능
	public List<Map<String, Object>> select(String query) {
		
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			// 조회된 결과의 컬럼 목록(실제 조회된 것들 가져와야돼)
			ResultSetMetaData rsmd = resultSet.getMetaData();
			int columnCount = rsmd.getColumnCount();
			
			//컬럼 이름들 저장할 리스트
			List<String> columnList = new ArrayList<>();
			for(int i = 1; i < columnCount; i++) {
				columnList.add(rsmd.getColumnName(i)); // 순차적으로 컬럼들 이름을 가져올 수 있어~ 걍 이래
			}
			
			// 20 1 휴먼시아 드림빌 208동 604호 111 전세 60000
			// {"id":20, "realtorId":1. "address":"휴먼시아 드림빌 208동 604호", "area":111, 
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			
			while (resultSet.next()) {
//				int id = resultSet.getInt("id");
//				String address = resultSet.getString("address");
//				// 모든 타입의 부모인 object를 이용해 업캐스팅 해줌
//				resultMap.put("id", id);
//				resultMap.put("address", address);
				
				Map<String, Object> resultMap = new HashMap<>();
				
				// 컬럼 이름을 통해 resultSet이 가르키는 행으로부터 Object 형태의 값을 얻어오고
				// 해당 컬럼 이름을 키로 얻어온 값을 맵에 저장한다.
				for(String column:columnList) { // 얻어온 값을 키로 해서 맵에 추가하기
					Object value = resultSet.getObject(column);
					resultMap.put(column, value);
				}
				resultList.add(resultMap);
			}
			statement.close();
			return resultList;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			// 정상적으로 수행되지 않았다는 것을 표현하기
			return null;
		}
		
		
		
		
	}
	
	// 삽입, 수정, 삭제 쿼리 수행 기능
	public int update(String query) {
		
		Statement statement;
		try {
			statement = connection.createStatement();
			int count = statement.executeUpdate(query);
			statement.close();
			return count;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return -1;
		}
	}
}
