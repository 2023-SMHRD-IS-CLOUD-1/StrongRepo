package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Command;
import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class UpdateService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1. 요청받은 데이터 꺼내오기
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick= request.getParameter("nick");
		String birthdate = request.getParameter("birthdate");
		
		
		// 2. Session안에 있는 email 꺼내오기
		// 2-1) session 꺼내오기
		HttpSession session = request.getSession();
		// 2-2) session 안에 저장 되어있는 사용자 로그인 정보 가져오기
		MemberVO mem = (MemberVO) session.getAttribute("result");
		// 2-3) email 정보만 가지고오기
		String email= mem.getEmail();
		
		// 3. 데이터를 하나로 묶어주기
		// ** 반드시 새로운 자료형을 만들언서 하나로 묶어주자!!**
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setName(name);
		vo.setNick(nick);
		vo.setBirthdate(birthdate);
		
		
		// 4. DAO 생성하기
		DAO dao = new DAO();
		
		
		// 5. dao.update 기능을 사용해서 실제 db에 값을 변경하기
		// row : table 안에서 영향을 받은 행의 개수
		// if : n개 수정 n개 돌아옴
		int row = dao.update(vo);
		
		
		// 6. 변경 성공한다면, session안에 있는 데이터를 변경된 데이터로 바꾸기
		if (row>0) {
			session.setAttribute("result", vo);
		}
		
		// 7. redirect 방식으로 
		return "redirect:/Gomain.do";
	}

}
