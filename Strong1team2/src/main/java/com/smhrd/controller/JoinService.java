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

		// 회원가입
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String repw = request.getParameter("repw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String birthdate = request.getParameter("birthdate");
		String gender = request.getParameter("gender");

		// 값에 null이 들어왔을때 예외 잡아주는 코드
		if (email == null || pw == null) {
			return "redirect:/Goregister.do?error=OtherException";
		} else {
			if (repw == null || name == null) {
				return "redirect:/Goregister.do?error=OtherException";
			} else {
				if (nick == null || birthdate == null) {
					return "redirect:/Goregister.do?error=OtherException";
				} else {
					if (gender == null) {
						return "redirect:/Goregister.do?error=OtherException";
					} else {
						MemberVO vo = new MemberVO();
						vo.setEmail(email);
						vo.setPw(pw);
						vo.setName(name);
						vo.setNick(nick);
						vo.setBirthdate(birthdate);
						vo.setGender(gender);

						DAO dao = new DAO();

						int row = dao.join(vo);

						if (row > 0 && pw == repw) {

							request.setAttribute("member", vo);

							return "redirect:/Gomain.do";
						} else {
							return "redirect:/Goregister.do?error=OtherException";

						}
					}
				}

			}

		}

	}
}
