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
		MemberVO mem = (MemberVO) session.getAttribute("result");
		System.out.println("----------------------------중간점검1----------------------------");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		MemberVO vo = new MemberVO();
		vo.setEmail(email);

		System.out.println(email);

		DAO dao = new DAO();

		if (mem.getEmail().equals(email) && mem.getPw().equals(pw)) {
			int row = dao.delete(vo);

			if (row > 0) {
			
				session.invalidate();
				return "redirect:/Gomain.do";
			}

		}

		return "redirect:/Gounregister.do?error=invalidCredentials";

	}

}
