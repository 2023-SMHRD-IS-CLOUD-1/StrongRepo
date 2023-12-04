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

		String email = request.getParameter("loginEmail");
		String pw = request.getParameter("loginPw");

		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);

		DAO dao = new DAO();

		MemberVO result = dao.login(vo);

		if (result != null) {

			HttpSession session = request.getSession();

			session.setAttribute("result", result);

		}

		return "redirect:/Gomain.do";

	}

}
