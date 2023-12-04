package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.logging.Log;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentMemberVO;
import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class CommentSelectAllService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CommentDAO dao = new CommentDAO();
		System.out.println("호출성공?");

		List<CommentMemberVO> resultList = dao.CommentselectAll();

		request.setAttribute("resultList", resultList);
		
		return "view";
		
		

	}

}
