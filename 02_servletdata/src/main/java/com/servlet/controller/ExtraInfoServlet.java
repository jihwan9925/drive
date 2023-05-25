package com.servlet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExtraInfoServlet
 */
@WebServlet("/extraInfo.do")
public class ExtraInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExtraInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// HttpServletRequest객체가 제공하는 정보
		//1. ContextRoot 가져오기 
		String contextPath=request.getContextPath(); //contextPath : 프로젝트의 상위로 접근하는 메소드(절대경로)
		System.out.println(contextPath);//contextRoot : 도달한 상위 루트
		
		//2. HttpRequest의 header정보 가져오기
		String userAgent=request.getHeader("User-Agent");
		System.out.println(userAgent);
		//ㄴ이전 페이지 정보 가져오기
		String prevPage=request.getHeader("Referer");
		System.out.println(prevPage);
		
		//3. 요청한 주소에 대한 정보를 가져오기
		String uri=request.getRequestURI();
		System.out.println(uri);
		StringBuffer url=request.getRequestURL();
		System.out.println(url);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
