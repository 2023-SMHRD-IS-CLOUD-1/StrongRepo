package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserCommentDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<CommentMemberVO> selectComment(CommentMemberVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<CommentMemberVO> result = sqlSession.selectList("selectComment", vo);
		sqlSession.close();
		return result;
	}

	public int uploadComment(CommentMemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("uploadComment", vo);
		sqlSession.close();
		return row;
	}

	public int dropComment(CommentMemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("dropComment", vo);
		if (row > 0) {
			sqlSession.commit();
			sqlSession.close();
		} else {
			sqlSession.rollback();
		}
		return row;
	}
}
