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
		String category = "마약";

		MemberVO vo = new MemberVO();
		UserBoardMemberVO usvo = new UserBoardMemberVO();
		String email = "j";
		System.out.println(title);
		System.out.println(content);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setCategory(category);
		vo.setEmail(email);
		
		
		UserBoardMemberVO ubDao = new UserBoardMemberVO();
		DAO dao = new DAO();
    	int row = dao.userBoard(vo);
    	
    	
    	if (row > 0) {
    		
    		request.setAttribute("member2", usvo);
			request.setAttribute("member", vo);
			// return "join_success"; 어디로 이동해야할지 모르겠어서 일단 main으로 둠 -원제-
			return "redirect:/Gomain.do";
		} else {
			System.out.println("실패");
			// redirect:/ >> 우리의 약속 기호!!
			// >> redirect 방식으로 이동해라 !! 를 FC에게 알려주는 역할!!
			return "redirect:/Gomain.do";
		}
		
		
		
		
		
		
		
		
	}

}
