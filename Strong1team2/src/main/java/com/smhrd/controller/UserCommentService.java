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

		
		 System.out.println("----------------------------1------------------------");
		 int postNum=0;
		 String D_COMMENT = request.getParameter("comment");
		 String id = request.getParameter("postNumber");
		 postNum = Integer.parseInt(id);
		 System.out.println(postNum);
		
		 System.out.println("----------------------------2------------------------");
	
		  HttpSession session = request.getSession();
		  
		  // String email = "j";
	      MemberVO result = (MemberVO)session.getAttribute("result");
	      String email = result.getEmail();
		  
		 postNum = Integer.parseInt(id);
		 CommentMemberVO vo = new CommentMemberVO();
		 UserCommentDAO dao = new UserCommentDAO();
		 
		 vo.setEMAIL(email);
		 vo.setB_NUM(postNum);
		 vo.setCMT_CONTENT(D_COMMENT);
		 
		 
		 
		 int row = dao.uploadComment(vo);
		 
		
		return "redirect:/GoboardView.do?id="+ postNum;
	}

}
