package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.BoardListService;
import com.smhrd.controller.Command;
import com.smhrd.controller.CommentViewService;
//import com.smhrd.controller.CommentViewService;
import com.smhrd.controller.DashBoardService;
import com.smhrd.controller.DropCommentService;
import com.smhrd.controller.DropViewService;
import com.smhrd.controller.EmailCheckService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.SelectAllService;
import com.smhrd.controller.UnregisterService;
import com.smhrd.controller.UpdateService;
import com.smhrd.controller.UserBoardService;
import com.smhrd.controller.UserCommentService;
import com.smhrd.controller.ViewService;
//import com.smhrd.controller.fixViewContentService;
import com.smhrd.controller.fixViewService;

// * -> 모든 .do로 끝나는 url은 해당하는 FC로 들어온다.
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HashMap<String, Command> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Command>();
		map.put("Join.do", new JoinService());
		map.put("Login.do", new LoginService());
		map.put("Logout.do", new LogoutService());
		map.put("SelectAll.do", new SelectAllService());
		map.put("Update.do", new UpdateService());
		map.put("EmailCheck.do", new EmailCheckService());
		map.put("Unregister.do", new UnregisterService());
		map.put("DashBoard.do", new DashBoardService());
		map.put("UserBoard.do", new UserBoardService());
		map.put("BoardList.do", new BoardListService());
		map.put("View.do", new ViewService());
		map.put("fixView.do", new fixViewService());
		map.put("DropView.do", new DropViewService());
		map.put("UserComment.do", new UserCommentService());
		map.put("CommentView.do", new CommentViewService());
		map.put("DropComment.do", new DropCommentService());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String uri = request.getRequestURI();

		String cp = request.getContextPath();

		String finaluri = uri.substring(cp.length() + 1);

		String path = null;
		Command com = null;
		if (finaluri.contains("Go")) {
			path = finaluri.substring(2).replaceAll(".do", "");
		} else {
			com = map.get(finaluri);
			path = com.execute(request, response);
		}
		// 3. 페이지 이동
		if (path == null) {
		} else if (path.contains("redirect:/")) {
			response.sendRedirect(path.substring(10));
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + path + ".jsp");
			rd.forward(request, response);
		}

	}

}
