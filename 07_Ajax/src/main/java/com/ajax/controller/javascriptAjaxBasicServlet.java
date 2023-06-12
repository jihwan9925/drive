package com.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class javascriptAjaxBasicServlet
 */
@WebServlet("/js/ajax.do")
public class javascriptAjaxBasicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public javascriptAjaxBasicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ajax서비스 실행");
		//ajax로 클라이언트가 보낸 데이터 가져오기
		String param=request.getParameter("param");
		System.out.println(param);
		
		response.setContentType("text/csv;charset=utf-8");
		PrintWriter out=response.getWriter(); //getWriter() : 스트림에 텍스트를 기록하는 메소드
		out.print("데이터 요청처리"); //responseText를 사용하여 출력가능
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		System.out.println("post방식요청 응답");
		String paramData=request.getParameter("param");
		System.out.println(paramData);
		//의도적인 딜레이 발생
		new Thread(()->{
			try {
				Thread.sleep(4000);
			}catch(InterruptedException e) {
				e.printStackTrace();
			}
		}).run();
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print("<h2>post요청에 대한 응답</h2>");
	}

}
