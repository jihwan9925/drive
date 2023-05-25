package com.servlet.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="enrollMember",urlPatterns= {"/enrollMember.do"})
public class EnrollMemberServlet extends HttpServlet{

	private static final long serialVersionUID = 8943647513626935483L;
	
	public EnrollMemberServlet() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//인코딩처리하기(post방식으로 전송시 한글이 깨지고 이를 방지하기 위한 방법)
		//HttpServletRequest.setCharacterEncoding()메소트이용
		
		req.setCharacterEncoding("UTF-8");
		
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		String name=req.getParameter("name");
		String nickname=req.getParameter("nickname");
		String email=req.getParameter("email");
		String[] hobbys=req.getParameterValues("hobby");
		String married=req.getParameter("married");
		String info=req.getParameter("info");
		
		System.out.println("아이디 : "+id);
		System.out.println("패스워드 : "+pw);
		System.out.println("이름 : "+name);
		System.out.println("닉네임 : "+nickname);
		System.out.println("이메일 : "+email);
		System.out.print("취미 : ");
		Arrays.asList(hobbys).stream().forEach(System.out::print);
		System.out.println();
		System.out.println("혼인여부 : "+married);
		System.out.println("메모 : "+info);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
	
	

}
