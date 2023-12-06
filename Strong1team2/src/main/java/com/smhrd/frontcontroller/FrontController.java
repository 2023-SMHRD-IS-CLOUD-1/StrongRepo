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
//import com.smhrd.controller.DropCommentService;
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
//import com.smhrd.controller.fixViewService;

// * -> 모든 .do로 끝나는 url은 해당하는 FC로 들어온다.
@WebServlet("*.do")
// 모든 요청을 처리하는 Servlet
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Key- Value 형식으로 데이터를 저장
	// key >> 고유의 값 ( 중복 허용 X ) >> 요청 url
	// value >> 중복 허용 >> 실행 시켜야 하는 service POJO
	private HashMap<String, Command> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// Servlet이 실행되는 순간 url - Command map 추가
		// if 문 안써도 됨
		
		// 새로운 기능이 추가되면, map에 url -POJO추가해주면
		//  service 메소드 안쪽에 코드를 고칠 필요가 없다
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
		
		
//		map.put("fixView.do", new fixViewService());
//		map.put("fixViewContent.do", new fixViewContentService());
	
		map.put("DropView.do", new DropViewService());
	
		map.put("UserComment.do", new UserCommentService());
		map.put("CommentView.do", new CommentViewService());
//		map.put("DropComment.do", new DropCommentService());
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// FC의 역할
		// --> 모든 요청을 다 처리하는 Servlet
		// --> 요청이 무엇이냐에 따라 일반 클래스에게 일을 시키는 주체

		// ☆공통☆ 한글 인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 요청 url을 구분하기

		// 1-1) uri 가져오기
		String uri = request.getRequestURI();

		// 1-2) cp 가져오기 (context path)
		String cp = request.getContextPath();

		System.out.println("요청uri : " + uri);
		System.out.println("요청cp : " + cp);

		// 1-3)
		String finaluri = uri.substring(cp.length() + 1);

		System.out.println("잘라낸 uri1 : " + finaluri);

		// >> 모든 기능을 수행하고 최종적으로 이동해야 하는 url 을 담는 공간
		String path = null;
		Command com = null;
		// >> 모든 Service 일반 클래스 파일을 대표할 수 있는 부모 자료형

		// 2. 최종 uri에 따라서 각각 일반 클래스 파일을 호출
		if (finaluri.contains("Go")) {
			// Go + 파일명 + .do
			// --> 파일명만 추출해서 path 값을 만들기

			// Gomain.do --> main 추출
			path = finaluri.substring(2).replaceAll(".do", "");
			System.out.println("잘라낸 uri2 : " + finaluri);
		} else {
			com = map.get(finaluri);
			path = com.execute(request, response);
			System.out.println("잘라낸 uri3 : " + finaluri);
		}
		// 3. 페이지 이동
		if(path==null) {
			// ajax로 통신이 들어왔을때 필요한 코드
			System.out.println("ajax가 null");
		}
		else if (path.contains("redirect:/")) {
			response.sendRedirect(path.substring(10));
			System.out.println("ajax가 else if");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + path + ".jsp");
			rd.forward(request, response);
			System.out.println("ajax가 else");
		}

	}
	
	

}
