package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.google.gson.Gson;
import com.smhrd.model.DAO;
import com.smhrd.model.DashBoardMemberVO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.UserBoardDAO;
import com.smhrd.model.UserBoardMemberVO;

public class ViewService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int postNum = 0;
		
		UserBoardDAO ubDao = new UserBoardDAO();
		UserBoardMemberVO vo = new UserBoardMemberVO();
		// 클라이언트에서 전달된 게시물 ID를 추출합니다.
		String id = request.getParameter("id");
		postNum = Integer.parseInt(id);
		vo.setB_NUM(postNum);
		
		System.out.println("죽고싶다");
		System.out.println(postNum);
		

		// postId를 이용하여 DB에서 해당 게시물의 정보를 조회합니다.
		List<UserBoardMemberVO> result = ubDao.selectView(vo); 
		System.out.println("죽고시ㅠ다2");
		
		// JSON 형태로 데이터를 응답합니다.
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		System.out.println("죽고시ㅠ다33");
		
		
		
		
		
		
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String jsonResult = gson.toJson(result);
		
		
//		request.setAttribute("jsonData", jsonResult); // jsonResult는 서버에서 생성한 JSON 데이터입니다.
//		RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
//		dispatcher.forward(request, response);
		
	
		
		
		out.print(jsonResult);
		
		return null;
	
	}

}
