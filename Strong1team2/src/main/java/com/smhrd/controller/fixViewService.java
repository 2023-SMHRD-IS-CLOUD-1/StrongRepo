package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Command;
import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;

public class fixViewService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 게시글 수정
		int B_NUM = 0;

		String content = request.getParameter("content");
		B_NUM = Integer.parseInt(request.getParameter("postNumber"));
		UserBoardMemberVO ubVO = new UserBoardMemberVO();

		ubVO.setContent(content);
		ubVO.setB_NUM(B_NUM);
		UserBoardDAO dao = new UserBoardDAO();
		int row = dao.fixView(ubVO);
		if (row > 0) {
			return "redirect:/GoboardView.do?id=" + B_NUM;
		} else {
			return "redirect:/GoboardView.do?id=" + B_NUM;
		}

	}
}