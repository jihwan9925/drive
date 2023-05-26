package com.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.member.model.service.MemberService;
import com.web.member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/login.do")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 클라이언트가 보낸 데이터를 가져옴
		//  userId, password
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		//System.out.println(userId+" : "+password);
		//2. DB접속해서 id와 password가 일치하는 회원이 있는지 확인
		
		Member loginMember=new MemberService()
					.selectByUserIdAndPw(userId, password);
		
//		System.out.println(loginMember);
		//loginMember null을 기준으로 로그인처리여부를 결정할 수 있음
		if(loginMember!=null) {
			//로그인 성공 -> 인증받음
			HttpSession session=request.getSession();
			session.setAttribute("loginMember", loginMember);			
			//session을 사용하는 이유 : 입력한 회원과 동일한 정보가 있으면 출력(loginMember)하는 변수를 
			// header.jsp에 보내서 분기문으로 활용할 수 있도록 할 수 있기 때문이다.
			
			response.sendRedirect(request.getContextPath());
			//sendRedirect를 사용하는 이유 : 
			// 1. 유사기능인 dispatcher가 있지만, dispatcher를 사용하면 주소를 변경하지않아 사용자가 f5를 누르면 로직이 계속실행된다.
			// 2. sendRedirect기능에는 request값을 전달하는 기능이 있기 떄문에 사용에 적합한다.
			
		}else {
			//로그인 실패 -> 인증못받음
			//실패 메세지 출력
			request.setAttribute("msg", "아이디,패스워드가 일치하지 않습니다.");
			request.setAttribute("loc", "/");
			request.getRequestDispatcher("views/common/msg.jsp").forward(request, response);
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
