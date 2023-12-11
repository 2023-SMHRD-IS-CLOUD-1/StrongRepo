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
		// 이메일 중복 체크
		String receive_email = request.getParameter("receive_email");

		DAO dao = new DAO();

		String result = dao.emailCheck(receive_email);

		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");

		if (result != null) {
			out.print("true");
		} else {
			out.print("false");
		}

		return null; // --> 이동할 페이지 응답

	}

}
