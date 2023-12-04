package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CommentDAO {

	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public int insertComment(CommentMemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		// 2. session 사용하기 mapper에 넘길 자료가 있으면 변수 두개
		int result = sqlSession.insert("insertComment", vo);
		// 3. session 반환하기
		sqlSession.close();
		// 4. 결과값 반납
		return result;
	}

	public List<CommentMemberVO> CommentselectAll() {

		SqlSession sqlSession = factory.openSession();

		List<CommentMemberVO> resultList = sqlSession.selectList("CommentselectAll");

		// 3. session 반납하기
		sqlSession.close();

		// 4. 조회한 결과값 반환
		return resultList;
	}

}
