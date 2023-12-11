package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.DAO;
import com.smhrd.model.DashBoardMemberVO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;

public class BoardListService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 게시판 글 목록 가져오는 코드
		UserBoardDAO ubDao = new UserBoardDAO(); 
		List<UserBoardMemberVO> result = ubDao.selectList();
		request.setAttribute("result", result);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String jsonResult = gson.toJson(result);
		
		return null; // 뷰 이름을 반환하지 않음
		
	}

}
