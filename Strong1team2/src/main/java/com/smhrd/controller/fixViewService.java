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
    	int B_NUM = 0;
         System.out.println("--------------------checkPoint1-------------------");
    	 
    	// UserBoardMemberVO mem = (UserBoardMemberVO) session.getAttribute("result");
    	
    	 System.out.println("--------------------checkPoint2-------------------");
    	  //String email = mem.getEMAIL();
    	  String content = request.getParameter("content");
    	  System.out.println(request.getParameter("postNumber") + "dkkkkkkkkkkkkk");
    	  B_NUM = Integer.parseInt(request.getParameter("postNumber")); 
    	  UserBoardMemberVO ubVO = new UserBoardMemberVO();
    	  
    	  ubVO.setContent(content);
    	  ubVO.setB_NUM(B_NUM);
    	  //ubVO.setEMAIL(email);
    	  System.out.println("--------------------checkPoint3-------------------");
    	  UserBoardDAO dao = new UserBoardDAO();
    	  int row = dao.fixView(ubVO);
    	  System.out.println("--------------------checkPoint4-------------------");
    	  
    	  if(row >0) {
    		  System.out.println("--------------------checkPoint5-------------------");
    		  return "redirect:/GoboardView.do?id="+ B_NUM;
    		  
    	  } else {
    		  return "redirect:/GoboardView.do?id="+ B_NUM;
    	  }

        
    }
}