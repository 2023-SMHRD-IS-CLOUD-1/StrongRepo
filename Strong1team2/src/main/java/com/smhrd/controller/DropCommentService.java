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
      System.out.println("----------------------------1------------------------");

       int B_NUM = 0;
       B_NUM = Integer.parseInt(request.getParameter("postNumber")); 
       System.out.println(B_NUM);
       String Comment = request.getParameter("id");
       System.out.println("----------------------------2------------------------");
       System.out.println(Comment);
       
       
       UserCommentDAO dao= new UserCommentDAO();
       System.out.println("----------------------------4------------------------");
       CommentMemberVO vo = new CommentMemberVO();
       System.out.println("----------------------------5------------------------");
       UserBoardMemberVO ubVO = new UserBoardMemberVO();
       System.out.println("----------------------------6------------------------");

       vo.setB_NUM(B_NUM);
       System.out.println("----------------------------7------------------------");
       vo.setCMT_CONTENT(Comment);
       System.out.println(vo.getCMT_CONTENT());
       System.out.println(vo.getB_NUM());
       
       int row = dao.dropComment(vo);
      
       if (row > 0) {
			System.out.println("페이지 제발 나와라");
			 return "redirect:/GoboardView.do?id="+ B_NUM;
		} else {
			System.out.println("실패해도페이지 제발 나와라");
			
			 return "redirect:/GoboardView.do?id="+ B_NUM;   
			
		}
   
         
      
  
   }
}