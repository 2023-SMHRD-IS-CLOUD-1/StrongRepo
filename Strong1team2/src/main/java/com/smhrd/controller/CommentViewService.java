package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.CommentMemberVO;
import com.smhrd.model.DAO;
import com.smhrd.model.DashBoardMemberVO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;
import com.smhrd.model.UserCommentDAO;

public class CommentViewService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 댁글 보여지게 하는 코드
		int postNum = 0;
		
		String id = request.getParameter("id");
		
		postNum = Integer.parseInt(id);
		CommentMemberVO vo = new CommentMemberVO();
		UserCommentDAO ubDao = new UserCommentDAO(); 

		vo.setB_NUM(postNum);
		List<CommentMemberVO> result = ubDao.selectComment(vo);
		
		request.setAttribute("result", result);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String jsonResult = gson.toJson(result);
		out.print(jsonResult);
		
		return null; // 뷰 이름을 반환하지 않음
	
	}

}
