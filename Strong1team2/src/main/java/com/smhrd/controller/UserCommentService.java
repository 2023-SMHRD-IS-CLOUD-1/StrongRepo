package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CommentMemberVO;
import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;
import com.smhrd.model.UserCommentDAO;

public class UserCommentService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 댓글 입력

		int postNum = 0;
		String D_COMMENT = request.getParameter("comment");
		String id = request.getParameter("postNumber");
		postNum = Integer.parseInt(id);

		if (D_COMMENT == null || D_COMMENT.isEmpty()) {
			return "redirect:/GoboardView.do?id=" + postNum;
		} else {

			HttpSession session = request.getSession();

			MemberVO result = (MemberVO) session.getAttribute("result");
			String email = result.getEmail();

			postNum = Integer.parseInt(id);
			CommentMemberVO vo = new CommentMemberVO();
			UserCommentDAO dao = new UserCommentDAO();

			vo.setEMAIL(email);
			vo.setB_NUM(postNum);
			vo.setCMT_CONTENT(D_COMMENT);
			int row = dao.uploadComment(vo);
			if (row > 0) {
				return "redirect:/GoboardView.do?id=" + postNum;
			} else {
				return "redirect:/GoboardView.do?id=" + postNum;
			}

		}

	}

}
