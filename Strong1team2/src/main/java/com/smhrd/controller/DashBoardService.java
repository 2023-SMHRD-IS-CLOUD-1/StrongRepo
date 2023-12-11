package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DashBoardDAO;
import com.smhrd.model.DashBoardMemberVO;

@WebServlet("/DashBoard")
public class DashBoardService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 대시보드 보여지게 하는 코드
		DashBoardDAO dao = new DashBoardDAO();

		List<DashBoardMemberVO> result = dao.temp1();
		List<DashBoardMemberVO> result1 = dao.temp2();
		List<DashBoardMemberVO> result2 = dao.temp3();
		List<DashBoardMemberVO> result3 = dao.temp4();
		
		List<DashBoardMemberVO> combinedResult = new ArrayList<>();
		    combinedResult.addAll(result);
		    combinedResult.addAll(result1);
		    combinedResult.addAll(result2);
		    combinedResult.addAll(result3);
		    
		for (DashBoardMemberVO value : result) {
		}
		for (DashBoardMemberVO value : result1) {
		}
		for (DashBoardMemberVO value : result2) {
		}
		for (DashBoardMemberVO value : result3) {
		}
		// 조회된 결과를 JSON으로 변환하여 클라이언트에게 응답
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
	    Gson gson = new Gson();
	    String jsonResult = gson.toJson(combinedResult);
	    out.print(jsonResult);

		return null; // 뷰 이름을 반환하지 않음
	    
	

	
	
	}

}
