package com.cookie.controller;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UseCookieServlet
 */
@WebServlet("/usecookie.do")
public class UseCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UseCookieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//쿠키값 가져오기(index.html에서 쿠키사용하기 누르면 이미 저장된 쿠키값이 적용된다)
		Cookie[] cookies=request.getCookies(); //쿠키에 넣을 값은 복수가 될 수 있어서 배열
		if(cookies!=null) {
			for(Cookie c : cookies) {
				System.out.println(c.getName());
				System.out.println(c.getValue());
				if(c.getName().equals("readBoard")) {
//					String[] data=c.getValue().split("\\$");
//					System.out.println(Arrays.toString(data));
					StringTokenizer st=new StringTokenizer(c.getValue(),"$");
					while(st.hasMoreTokens()) {
						System.out.println(st.nextToken());
					}
				}
			}
		}
		
		HttpSession session=request.getSession(false);
		String data=(String)session.getAttribute("data");
		System.out.println(data);
		
		System.out.println("contextdata+서블릿 초기화 데이터 출력");
		
		//context-param은 실행이 잘됨(전역변수여서)
		String contextdata=getServletContext().getInitParameter("admin");
		System.out.println(contextdata);
		
		//init-param은 실행이 안됨(지역변수여서+이곳에 선언된 지역변수가 아니여서)
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
