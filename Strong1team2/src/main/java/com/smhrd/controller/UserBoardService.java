package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardMemberVO;

public class UserBoardService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = request.getParameter("title");
		String content = request.getParameter("content");

	
		
		
		
		if(title==null || content==null || title.isEmpty() || content.isEmpty()) {
			return "redirect:/Goknowledge_Board.do?error=invalidCredentials";
		}  else {
			HttpSession session = request.getSession();

			MemberVO result = (MemberVO) session.getAttribute("result");
			String email = result.getEmail();

			MemberVO vo = new MemberVO();
			UserBoardMemberVO usvo = new UserBoardMemberVO();

			vo.setTitle(title);
			vo.setContent(content);
			vo.setEmail(email);
			
			DAO dao = new DAO();
			int row = dao.userBoard(vo);

			if (row > 0) {
				request.setAttribute("member", vo);
				return "redirect:/Goknowledge_Board.do#board";
			} else {
				return "redirect:/Goknowledge_Board.do#board";
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		


		
	}

}
