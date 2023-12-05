package com.smhrd.database;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
// org.apache.ibatis >> packages는 기본 패키지가 아니라 mybatis library에서 제공해주고 있는 패키지다!!

public class SqlSessionManager {
	
	public static SqlSessionFactory sqlSessionFactory;
	
	// 객체의 이름을 부르는 순간 바로 실행되는 코드
	// >> 생성자와 비슷한 역할인데, java 실행되자마자 가장 먼저 동작하게 하기위해서
	// static 키워드를 붙인 것 
	static {
		
		String resource = "com/smhrd/database/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// SqlSessionFactory 라는 객체를 리턴해주는 메소드
	// SqlSessionFactory == CP
	// SqlSession == Connection(SQL구문 동작시킬 수 있는)
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}
	
	
	
	

}
