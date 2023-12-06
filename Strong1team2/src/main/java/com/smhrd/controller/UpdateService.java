package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Command;
import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class UpdateService implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("-------------------------------중간점검1------------------------------");
        // 1. 요청받은 데이터 꺼내오기
        String email = request.getParameter("email");
        String pw = request.getParameter("pw");
        String repw = request.getParameter("repw");
        String name = request.getParameter("name");
        String nick = request.getParameter("nick");
        String birthdate = request.getParameter("birthdate");
        String gender = request.getParameter("gender");

        // 2. Session안에 있는 정보 가져오기
        HttpSession session = request.getSession();
        MemberVO mem = (MemberVO) session.getAttribute("result");
        MemberVO vo = new MemberVO();

        System.out.println(mem.getEmail());
        System.out.println(mem.getPw());
        System.out.println(email);
        System.out.println(pw);
        if(mem.getEmail().equals(email) && mem.getPw().equals(pw)) {
        	System.out.println("-------------------------------중간점검2------------------------------");
        	
        	vo.setEmail(email);
        	vo.setPw(repw);
        	vo.setName(name);
        	vo.setNick(nick);
        	vo.setBirthdate(birthdate);
        	// 4. DAO 생성하기
        	DAO dao = new DAO();
        	
        	int row = dao.update(vo);
        	
        	if (row > 0) {
        		session.setAttribute("result", vo);
        		return "redirect:/Gomain.do";
        		
        	} 
        }
        
        return "redirect:/Gomodify.do?error=invalidCredentials";
        
        	

    }
}