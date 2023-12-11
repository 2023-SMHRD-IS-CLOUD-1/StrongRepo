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

public class DropCommentService implements Command {

   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

	   // 댓글 삭제
       int B_NUM = 0;
       B_NUM = Integer.parseInt(request.getParameter("postNumber")); 
       System.out.println(B_NUM);
       String Comment = request.getParameter("id");
       
       
       UserCommentDAO dao= new UserCommentDAO();
       CommentMemberVO vo = new CommentMemberVO();
       UserBoardMemberVO ubVO = new UserBoardMemberVO();

       vo.setB_NUM(B_NUM);
       vo.setCMT_CONTENT(Comment);
       
       int row = dao.dropComment(vo);
      
       if (row > 0) {
			 return "redirect:/GoboardView.do?id="+ B_NUM;
		} else {
			 return "redirect:/GoboardView.do?id="+ B_NUM;   
			
		}
   
         
      
  
   }
}