package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String repw = request.getParameter("repw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String birthdate = request.getParameter("birthdate");
		String gender = request.getParameter("gender");


		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);
		vo.setName(name);
		vo.setNick(nick);
		vo.setBirthdate(birthdate);
		vo.setGender(gender);
		
		DAO dao = new DAO();

		int row = dao.join(vo);

		if (row > 0 && pw==repw) {

			request.setAttribute("member", vo);
			// return "join_success"; 어디로 이동해야할지 모르겠어서 일단 main으로 둠 -원제-
			return "redirect:/Gomain.do";
		} else {
			System.out.println("실패");
			// redirect:/ >> 우리의 약속 기호!!
			// >> redirect 방식으로 이동해라 !! 를 FC에게 알려주는 역할!!
			return "redirect:/Gomain.do";
		}

	}

}
