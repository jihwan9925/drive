package com.board.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertBoardView
 */
@WebServlet("/insertBoardView.do")
public class InsertBoardView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo=(int)request.getAttribute("random");
		
		String title=request.getParameter("title");
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String html="<html>";
		html+="<head>";
		html+="<title>게시글 등록</title>";
		html+="<body>";
		html+="<h1> 게시글 등록 </h1>";
		html+="<h3>게시글 번호 : "+boardNo+"</h3>";
		html+="<h3>제목 : "+title+"</h3>";
		html+="<h3>작성자 : "+writer+"</h3>";
		html+="<h3>내용 : "+content+"</h3>";
		
		out.write(html);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
