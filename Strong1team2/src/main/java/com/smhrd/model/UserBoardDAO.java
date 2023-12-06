package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserBoardDAO {
	
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	
	
	public List<UserBoardMemberVO> selectList() {
		
		SqlSession sqlSession = factory.openSession();
		
		List<UserBoardMemberVO> result= sqlSession.selectList("selectList");
		
		
		sqlSession.close();
		
		
		return result;
	}
  // 원제 코드

	public List<UserBoardMemberVO> selectView(UserBoardMemberVO vo) {
		SqlSession sqlSession = factory.openSession();
		
		List<UserBoardMemberVO> result= sqlSession.selectList("selectView", vo);
		
		sqlSession.close();
		
		
		return result;
		
		
	}
	
	
	public int deleteView(UserBoardMemberVO vo) {
		// (1) 연결 객체 (sqlsession, connection)를 빌려오기
				SqlSession sqlSession = factory.openSession(true);
				
				// (2) 연결 객체를 사용해서 어떤 sql구문을 실행
				// --->sql구문: Mapper.xml파일 안에 있음
				System.out.println("매퍼 이동");
				int row = sqlSession.delete("deleteView", vo);
				
				System.out.println(row);
				if(row>0) {
					sqlSession.commit();
					sqlSession.close();
				} else {
					sqlSession.rollback();
				}
				
				
				System.out.println("나옴");
				return row;
		
	}
	
	
	public int fixView(UserBoardMemberVO ubVO) {
		
		
		// 1. session 빌려오기
				SqlSession sqlSession = factory.openSession(true);
				// 2. session 사용하기 mapper에 넘길 자료가 있으면 변수 두개
				int result= sqlSession.update("fixView",ubVO);
				// 3. session 반환하기
				sqlSession.close();
				// 4. 결과값 반납
				return result;
		
		
		
	}

	
	
	


	


}
