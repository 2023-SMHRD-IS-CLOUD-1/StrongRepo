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
		System.out.println("----------------------------1------------------------");
		 int postNum=0;
		 String B_NUM = request.getParameter("postNumber");
		 System.out.println("----------------------------2------------------------");
		 System.out.println(B_NUM);
		 
		 postNum = Integer.parseInt(B_NUM);
		
		 System.out.println("----------------------------3------------------------");
			UserBoardMemberVO vo = new UserBoardMemberVO();
			vo.setB_NUM(postNum);
			
			UserBoardDAO dao = new UserBoardDAO();
			
			int row = dao.deleteView(vo);
			

			if (row > 0) {
				System.out.println("----------------------------중간점검3----------------------------");
				
				
				return "redirect:/Goknowledge_Board.do#board";
			} else {
				System.out.println("실패");
				
				return "redirect:/Goknowledge_Board.do#board";
				
			}
			
		
		

	}
}
