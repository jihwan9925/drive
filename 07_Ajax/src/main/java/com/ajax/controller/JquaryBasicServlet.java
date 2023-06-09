package com.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JquaryBasicServlet
 */
@WebServlet("/jquery/ajax.do")
public class JquaryBasicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JquaryBasicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//쿼리스트링값 가져오기
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
//		System.out.println(name+age);
		//js에 String으로 보내기 (1. response.getWriter() 2. print(보낼데이터))
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(name); //따로보낸게 아니라 out에 한번에 모아서 보내준다.
		out.print(age);
		out.print("사용자가 보낸 데이터");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		System.out.println("post방식으로 요청");
		System.out.println(name+age);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(name);
		out.print(age);
		out.print("사용자가 post방식으로 보낸 데이터");
	}

}
