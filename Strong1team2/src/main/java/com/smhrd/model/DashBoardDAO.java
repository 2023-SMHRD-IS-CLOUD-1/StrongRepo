package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DashBoardDAO {
	
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<DashBoardMemberVO> temp1(){
		// 세션 열어줌
		SqlSession sqlSession = factory.openSession();
		
		// temp1 결과 받아옴
		List<DashBoardMemberVO> result= sqlSession.selectList("temp1");
		System.out.println(result);
		
		// 세션 닫아줌
		sqlSession.close();
		
		// temp1 결과값 리턴
		return result;
	}
	
	public List<DashBoardMemberVO> temp2(){
		// 세션 열어줌
		SqlSession sqlSession = factory.openSession();
		
		// temp1 결과 받아옴
		List<DashBoardMemberVO> result= sqlSession.selectList("temp2");
		System.out.println(result);
		
		// 세션 닫아줌
		sqlSession.close();
		
		// temp1 결과값 리턴
		return result;
	}
	
	public List<DashBoardMemberVO> temp3(){
		// 세션 열어줌
		SqlSession sqlSession = factory.openSession();
		
		// temp1 결과 받아옴
		List<DashBoardMemberVO> result= sqlSession.selectList("temp3");
		System.out.println(result);
		
		// 세션 닫아줌
		sqlSession.close();
		
		// temp1 결과값 리턴
		return result;
	}
	
	public List<DashBoardMemberVO> temp4(){
		// 세션 열어줌
		SqlSession sqlSession = factory.openSession();
		
		// temp1 결과 받아옴
		List<DashBoardMemberVO> result= sqlSession.selectList("temp4");
		System.out.println(result);
		
		// 세션 닫아줌
		sqlSession.close();
		
		// temp1 결과값 리턴
		return result;
	}
}
