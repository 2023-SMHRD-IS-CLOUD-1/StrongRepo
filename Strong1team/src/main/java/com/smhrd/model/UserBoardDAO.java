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
		
		List<UserBoardMemberVO> result= sqlSession.selectList("selectBoard");
		
		
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
	// 고친거
//	public List<UserBoardMemberVO> selectView() {
//		SqlSession sqlSession = factory.openSession();
//		
//		List<UserBoardMemberVO> result= sqlSession.selectList("selectView");
//		
//		sqlSession.close();
//		
//		
//		return result;
//		
//		
//	}

	


}
