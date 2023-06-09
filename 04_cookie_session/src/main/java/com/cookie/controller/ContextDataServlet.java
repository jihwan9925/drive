package com.cookie.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContextDataServlet
 */
//@WebServlet("/contextdata.do") //주소가 중복되면 예외처리가 되어 서버가 닫힌다.
public class ContextDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// web.xml에 생성한 context-param으로 등록된 데이터 가져오기
		ServletContext context=getServletContext();
		String contextdata=context.getInitParameter("admin");
		System.out.println(contextdata);
		
		//서블릿 초기화 데이터 이용하기(내부에 init-param을 생성하여 접근가능)
		String servletdata=getInitParameter("servletdata");
		System.out.println(servletdata);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
