package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DAO {
	
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public int join(MemberVO vo) {
		// (1) 연결 객체 (sqlsession, connection)를 빌려오기
		SqlSession sqlSession = factory.openSession(true);
		
		// (2) 연결 객체를 사용해서 어떤 sql구문을 실행
		// --->sql구문: Mapper.xml파일 안에 있음
		int row = sqlSession.insert("join", vo);
		
		// sqlSession.selectOne(null)
		// (3) 연결 객체 반납
		sqlSession.close();
		return row;
	}
	
	public MemberVO login(MemberVO vo) {
		SqlSession sqlSession = factory.openSession();
		MemberVO result = sqlSession.selectOne("login",vo);
		sqlSession.close();
		// select를 수행하고 나면 리턴타입 >> T
		// <T> : 제네릭 기법
		// 클래스 내부에서 사용하게 될 자료형을 외부에서 지정하는 기법
		// 만약 리턴 타입이 Object 였다면, 우리는 결과값을 강제 형변환 해줘야 할텐데
		// T형식으로 되돌아오기 때문에 강제 형변환(다운캐스팅)을 해줄 필요가 없다
		return result;
	}
	
	public List<MemberVO> selectAll() {
		// 1. session 빌려오기
		SqlSession sqlSession = factory.openSession();
		
		// 2. session 사용하기
		// statement --> Mapper 파일 안쪽에 각각의 태그들의 id 지칭
		// error >> Mapper~~~~~~  ---> Mapper 파일 태그 id 가 중복으로 정의 되면 나는 오류
		// statement 랑 메소드명 일치시키기
		
		// MemberVO -->한명에 대한 정보를 표현할 수 있는 type
		
		// 여러명의 정보를 하나로 묶어서 표현해야함
		// (1) 객체 배열 (2) ArrayList
		//----> 크가가 가변적인 ArrayList가 적합
		//-----> ArrayList의 부모클래스 격인 List형태로 리턴 받아옴
		List<MemberVO> result= sqlSession.selectList("selectAll");
		
		// 3. session 반납하기
		sqlSession.close();
		
		// 4. 조회한 결과값 반환
		return result;
	}
	
	
	
	

	public int update(MemberVO vo) {
		// 1. session 빌려오기
		SqlSession sqlSession = factory.openSession(true);
		// 2. session 사용하기 mapper에 넘길 자료가 있으면 변수 두개
		int result= sqlSession.update("update",vo);
		// 3. session 반환하기
		sqlSession.close();
		// 4. 결과값 반납
		return result;
	}
	
	

	public String emailCheck(String receive_email) {
		
		SqlSession sqlSession = factory.openSession();
		
		String result = sqlSession.selectOne("emailCheck", receive_email);
		
		sqlSession.close();
		
		return result;
	}

	public int delete(MemberVO vo) {
		// (1) 연결 객체 (sqlsession, connection)를 빌려오기
		SqlSession sqlSession = factory.openSession(true);
		
		// (2) 연결 객체를 사용해서 어떤 sql구문을 실행
		// --->sql구문: Mapper.xml파일 안에 있음
		System.out.println("매퍼 이동");
		int row = sqlSession.delete("delete", vo);
		
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

	public int userBoard(MemberVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		// 2. session 사용하기 mapper에 넘길 자료가 있으면 변수 두개
		int result=sqlSession.insert("userBoard",vo);
		// 3. session 반환하기
		sqlSession.close();
		// 4. 결과값 반납
		return result;
		
		
	}

}
