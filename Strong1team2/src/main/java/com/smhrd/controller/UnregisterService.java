package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class UnregisterService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		System.out.println("----------------------------중간점검1----------------------------");
		String email = request.getParameter("email");
		
		
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		
		System.out.println(email);
		
		
		
		DAO dao = new DAO();
		System.out.println("dao 생성");
		int row = dao.delete(vo);
		
		System.out.println("----------------------------중간점검2----------------------------");

		if (row > 0) {
			System.out.println("----------------------------중간점검3----------------------------");
			
			session.invalidate();
			return "redirect:/Gomain.do";
		} else {
			System.out.println("실패");
			// redirect:/ >> 우리의 약속 기호!!
			// >> redirect 방식으로 이동해라 !! 를 FC에게 알려주는 역할!!
			return "redirect:/Gomodify.do";
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}
}
