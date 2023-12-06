package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);

		DAO dao = new DAO();

		MemberVO result = new MemberVO();
		
		result = dao.login(vo);
		
//		try {
//		}
//		catch() {
//			
//		}
		
		

		if (result != null) {

			HttpSession session = request.getSession();
			session.setAttribute("result", result);
			return "redirect:/Goknowledge_Board.do#board";
		} else {
			return "redirect:/Gologin.do?error=invalidCredentials";
		}


	}

}
