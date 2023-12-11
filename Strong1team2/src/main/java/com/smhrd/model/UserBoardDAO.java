package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserBoardDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<UserBoardMemberVO> selectList() {
		SqlSession sqlSession = factory.openSession();
		List<UserBoardMemberVO> result = sqlSession.selectList("selectList");
		sqlSession.close();
		return result;
	}

	public List<UserBoardMemberVO> selectView(UserBoardMemberVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<UserBoardMemberVO> result = sqlSession.selectList("selectView", vo);
		sqlSession.close();
		return result;
	}

	public int deleteView(UserBoardMemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("deleteView", vo);
		if (row > 0) {
			sqlSession.commit();
			sqlSession.close();
		} else {
			sqlSession.rollback();
		}
		return row;
	}

	public int fixView(UserBoardMemberVO ubVO) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.update("fixView", ubVO);
		sqlSession.close();
		return result;
	}

	public int update(UserBoardMemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.update("upviews", vo);
		sqlSession.close();
		return result;
	}

}
