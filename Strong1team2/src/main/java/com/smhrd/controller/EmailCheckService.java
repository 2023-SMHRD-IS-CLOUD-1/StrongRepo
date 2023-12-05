package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberVO;
import com.smhrd.model.DAO;


public class EmailCheckService implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. 요청데이터 꺼내오기
		
		String receive_email = request.getParameter("receive_email");
	
		
		// 2. DAO 객체 생성
		DAO dao = new DAO();
		

		
		// 3. dao.emailCheck(receive_email)
		String result = dao.emailCheck(receive_email);
		
		System.out.println("조회된 결과 "+ result);
		
		
		// 4. 조회된 결과가 있다면 true 응답
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		
		if(result!=null){
			out.print("true");
		}
		else {
			out.print("false");
		}
		
		// 5. 없다면 false 응답
		return null; // --> 이동할 페이지 응답
		
		

	}

}
