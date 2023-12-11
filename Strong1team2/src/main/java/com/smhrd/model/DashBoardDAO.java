package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DashBoardDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<DashBoardMemberVO> temp1(){
		SqlSession sqlSession = factory.openSession();
		List<DashBoardMemberVO> result= sqlSession.selectList("temp1");
		sqlSession.close();
		return result;
	}
	
	public List<DashBoardMemberVO> temp2(){
		SqlSession sqlSession = factory.openSession();
		List<DashBoardMemberVO> result= sqlSession.selectList("temp2");
		sqlSession.close();
		return result;
	}
	
	public List<DashBoardMemberVO> temp3(){
		SqlSession sqlSession = factory.openSession();
		List<DashBoardMemberVO> result= sqlSession.selectList("temp3");
		sqlSession.close();
		return result;
	}
	
	public List<DashBoardMemberVO> temp4(){
		SqlSession sqlSession = factory.openSession();
		List<DashBoardMemberVO> result= sqlSession.selectList("temp4");
		sqlSession.close();
		return result;
	}
	
	 
}


