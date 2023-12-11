package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;

public class DropViewService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 게시글 삭제
		int postNum = 0;
		String B_NUM = request.getParameter("postNumber");

		postNum = Integer.parseInt(B_NUM);

		UserBoardMemberVO vo = new UserBoardMemberVO();
		vo.setB_NUM(postNum);

		UserBoardDAO dao = new UserBoardDAO();

		int row = dao.deleteView(vo);

		if (row > 0) {
			return "redirect:/Goknowledge_Board.do#board";
		} else {
			return "redirect:/Goknowledge_Board.do#board";
		}

	}
}
