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
    	// 회원정보수정
        String email = request.getParameter("email");
        String pw = request.getParameter("pw");
        String repw = request.getParameter("repw");
        String name = request.getParameter("name");
        String nick = request.getParameter("nick");
        String birthdate = request.getParameter("birthdate");
        String gender = request.getParameter("gender");

        HttpSession session = request.getSession();
        MemberVO mem = (MemberVO) session.getAttribute("result");
        MemberVO vo = new MemberVO();

        if(mem.getEmail().equals(email) && mem.getPw().equals(pw)) {
        	vo.setEmail(email);
        	vo.setPw(repw);
        	vo.setName(name);
        	vo.setNick(nick);
        	vo.setBirthdate(birthdate);

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