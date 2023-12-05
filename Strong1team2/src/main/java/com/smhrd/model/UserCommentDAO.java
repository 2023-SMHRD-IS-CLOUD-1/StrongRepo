package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserCommentDAO {
	
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public List<CommentMemberVO> selectComment(CommentMemberVO vo) {
		
		SqlSession sqlSession = factory.openSession();
		
		List<CommentMemberVO> result= sqlSession.selectList("selectComment", vo);
		
		
		sqlSession.close();
		
		
		return result;
	

	}

	public int uploadComment(CommentMemberVO vo) {
		
		SqlSession sqlSession = factory.openSession(true);
		
		
		int row=sqlSession.insert("uploadComment", vo);
		
	
		sqlSession.close();
		return row;
	}

	


}
