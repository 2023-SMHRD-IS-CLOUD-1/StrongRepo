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
		System.out.println("---------------checkPoint11-------------------");
		HttpSession session = request.getSession();
		MemberVO result = (MemberVO)session.getAttribute("result");
		String email = result.getEmail();
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		session.setAttribute("member", vo);
		System.out.println(vo.getEmail());
		
		System.out.println("---------------checkPoint22-------------------");
		
		
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		vo.setTitle(title);
		vo.setContent(content);
		  

		//UserBoardMemberVO usvo = new UserBoardMemberVO();
		
		System.out.println(title);
		System.out.println(content);
		
		
		UserBoardMemberVO ubDao = new UserBoardMemberVO();
		DAO dao = new DAO();
    	int row = dao.userBoard(vo);
    	
    	
    	if (row > 0) {
    		
    		//request.setAttribute("member2", usvo);
    		request.setAttribute("member", vo);
			System.out.println("vo확인"+vo.getEmail());
			// return "join_success"; 어디로 이동해야할지 모르겠어서 일단 main으로 둠 -원제-
			return "redirect:/Goknowledge_Board.do#board";
		} else {
			System.out.println("실패");
			// redirect:/ >> 우리의 약속 기호!!
			// >> redirect 방식으로 이동해라 !! 를 FC에게 알려주는 역할!!
			return "redirect:/Goknowledge_Board.do#board";
		}
		
		
		
		
		
		
		
		
	}

}
