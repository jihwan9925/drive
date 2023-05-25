package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckDataServlet
 */
@WebServlet("/checkData.do")
public class CheckDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
		
		String requestData=(String)request.getAttribute("requestdata");
		HttpSession session=request.getSession();
		//위임받기 전에도 getSession했는데 여기서도 하는 이유 : 서로 다른 지역에서 불러와야 되기 때문에(그냥 평소 메소드사용법과 다르지 않다.)
		//처음 getSession하면 최상위 컨테이너에 저장되고 그것을 위임받은 이곳에서 불러오는 과정
		String sessionData=(String)session.getAttribute("sessiondata");
		ServletContext context=getServletContext();
		String contextData=(String)context.getAttribute("contextdata");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String html="<h3>request : "+requestData+"</h3>";
		html+="<h3>session : "+sessionData+"</h3>";
		html+="<h3>context : "+contextData+"</h3>";
		html+="<button onclick=\"location.assign('/02_servletdata/checkData.do');\">checkdata재요청</button>";
		html+="<button onclick=\"location.assign('/02_servletdata/deleteSession.do');\">session삭제</button>";
		//ㄴ버튼을 누르면 request외에는 값이 유지된다.
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
