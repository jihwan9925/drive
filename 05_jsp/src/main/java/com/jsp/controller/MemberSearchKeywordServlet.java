package com.jsp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.model.dto.MemberDto;
import com.model.service.MemberService;

/**
 * Servlet implementation class MemberSearchKeywordServlet
 */
@WebServlet("/memberKeyword.do")
public class MemberSearchKeywordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSearchKeywordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//student계정의 Member테이블에 있는 데이터를 검색하는 기능
		
		//0. 클라이언트가 보낸데이터를 가져오기 
		String name=request.getParameter("keyword");
		System.out.println(name);
		//1. DB에서 클라이언트가 보낸데이터가 있는지 조회하기 ->jdbc이용
		List<MemberDto> members=new MemberService().selectMemberKeyword(name);
		
		//결과값 java에 저장하기
		request.setAttribute("members", members);
		
		//2. DB정보를 출력할 화면을 선택한다. ->jsp이용(sendredirect는 정보를 담을 수 없고 일회용이기 때문에 dispatcher 사용)
		RequestDispatcher rd=request.getRequestDispatcher("/views/SearchMember.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
