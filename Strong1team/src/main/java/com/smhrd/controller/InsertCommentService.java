package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentMemberVO;

public class InsertCommentService implements Command {

    public String execute(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException { 
    	
    	String email = "madebybum";
    	Integer b_num = 88;
    	String cmt_content = request.getParameter("content");
    	
    	
    	CommentMemberVO vo = new CommentMemberVO();
    	
    	vo.setEMAIL(email);
    	vo.setB_NUM(b_num);
    	vo.setCMT_CONTENT(cmt_content);
    	
    	CommentDAO dao = new CommentDAO();
    	int row = dao.insertComment(vo);
    	System.out.println(row);
    	
    	if(row > 0) {
    		request.setAttribute("member", vo);
    		System.out.println("성공");
    		return "redirect:/Goview.do";
    	} else {
    		System.out.println("실패");
    		return "redirect:/Goview.do";
    	}
    	
    	
    	
    	
    	
    }


}
