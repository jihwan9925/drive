package com.ajax.controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.admin.model.service.AdminService;
import com.web.model.dto.MemberDTO;

/**
 * Servlet implementation class AjaxMemberViewServlet
 */
@WebServlet("/memberView.do")
public class AjaxMemberViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxMemberViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원정보 받아오기
		List<MemberDTO> members=new AdminService().viewMember(1,30);
		
		//방법1 : 회원정보를 jsp로 옮겨 테이블을 만들고 html을 받아오기
//		request.setAttribute("members", members);
//		request.getRequestDispatcher("/views/htmlMemberResponse.jsp").forward(request, response);
		
		//방법2 : 회원정보를 문자열로 변경해서 스트림으로 보내기
		//ㄴstream은 iterator와 같은 기능을 수행한다(순회하며 값을 출력하기), map()은 값의 변형을 당담하는 기능이다 ,
		//ㄴ.collect()는 map()이 끝난후 정렬하기위한 기준이다, Collectors.joining("\n")은 ""안의 내용을 기준으로 배치하여 String으로 반환한다.
		String resultData=members.stream().map(e->e.toString()).collect(Collectors.joining("\n"));
		response.setContentType("text/csv;charset=utf-8");
		response.getWriter().print(resultData);
		//csv방식으로 데이터를 보내기
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
