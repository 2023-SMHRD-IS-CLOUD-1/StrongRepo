package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public int join(MemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("join", vo);
		sqlSession.close();
		return row;
	}

	public MemberVO login(MemberVO vo) {
		SqlSession sqlSession = factory.openSession();
		MemberVO result = sqlSession.selectOne("login", vo);
		sqlSession.close();
		return result;
	}

	public List<MemberVO> selectAll() {
		SqlSession sqlSession = factory.openSession();
		List<MemberVO> result = sqlSession.selectList("selectAll");
		sqlSession.close();
		return result;
	}

	public int update(MemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.update("update", vo);
		sqlSession.close();
		return result;
	}

	public String emailCheck(String receive_email) {
		SqlSession sqlSession = factory.openSession();
		String result = sqlSession.selectOne("emailCheck", receive_email);
		sqlSession.close();
		return result;
	}

	public int delete(MemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("delete", vo);
		if (row > 0) {
			sqlSession.commit();
			sqlSession.close();
		} else {
			sqlSession.rollback();
		}
		return row;
	}

	public int userBoard(MemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("userBoard", vo);
		sqlSession.close();
		return result;
	}

}
