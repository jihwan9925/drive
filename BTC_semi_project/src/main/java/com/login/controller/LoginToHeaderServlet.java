package com.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.web.controller.emailId;

/**
 * Servlet implementation class LoginToHeaderServlet
 */
@WebServlet("/LoginToHeaderServlet.do")
public class LoginToHeaderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginToHeaderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//아이디값을 받아와서 헤더로 넘기기
		
		//아이디 불러오기
		String userId=request.getParameter("id");
		System.out.println(userId);
		
		//세션에 저장
		HttpSession session=request.getSession();//true/flase도 줄 수 있다. 그러나 세션은 (jsp파일에 별도 설정 없는 상태에서는) 기본적으로 존재한다
		session.setAttribute("userId", userId);
		
		String id=(String)session.getAttribute("userId");
		
		System.out.println("flag1 : "+id);
		//값이 있으면 메인으로이동
		if(id!=null) {
			//메인에 보내기
			System.out.println("flag2 : "+id);
			response.sendRedirect(request.getContextPath());			
		}else {
			//실패 로그 출력
			System.out.println("flag3 : "+id);
			System.out.println("올바른 아이디값을 넣어주세요.");
			request.getRequestDispatcher("/views/LOGIN/login.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
