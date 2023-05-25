package com.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.member.sevice.MemberService;

//import com.jsp.model.dto.MemberDto;
//import com.model.service.MemberService;

/**
 * Servlet implementation class MemberSearchServlet
 */
@WebServlet("/membersearch.do")
public class MemberSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//student계정의 Member테이블에 있는 데이터를 검색하는 기능
		
		MemberService m= new MemberService();
		
		//0. 클라이언트가 보낸데이터를 가져오기 
		String id=request.getParameter("userId");
		String pw=request.getParameter("password");
		System.out.println("아이디 : "+id+"패스워드 : "+pw);
		//1. DB에서 클라이언트가 보낸데이터가 있는지 조회하기 ->jdbc이용
		int result=m.MemberSearch(id,pw);
		
		//결과값 java에 저장하기
		String output="";
		if(result==1) output="로그인성공";
		else output="로그인 실패";
		
		
		//2. DB정보를 출력할 화면을 선택한다. ->jsp이용(sendredirect는 정보를 담을 수 없고 일회용이기 때문에 dispatcher 사용)
		if(loginMember!=null) {
			//로그인 설공
			HttpSession session=request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect(request.getContextPath());
			//sendRedirect를 사용하는 이유 : 유사기능인 dispatcher가 있지만,
			//  dispatcher를 사용하면 주소를 변경하지않아 사용자가 f5를 누르면 로직이 계속실행된다.
		}else {
			//로그인 실패
			//실패메세지 출력
			
		}
		
		
		
//		//student계정의 Member테이블에 있는 데이터를 검색하는 기능
//		
//		//0. 클라이언트가 보낸데이터를 가져오기 
//		String name=request.getParameter("keyword");
//		System.out.println(name);
//		//1. DB에서 클라이언트가 보낸데이터가 있는지 조회하기 ->jdbc이용
//		List<MemberDto> members=new MemberService().selectMemberKeyword(name);
//		
//		//결과값 java에 저장하기
//		request.setAttribute("members", members);
//		
//		//2. DB정보를 출력할 화면을 선택한다. ->jsp이용(sendredirect는 정보를 담을 수 없고 일회용이기 때문에 dispatcher 사용)
//		RequestDispatcher rd=request.getRequestDispatcher("/views/SearchMember.jsp");
//		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
