package com.ajax.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.web.admin.model.service.AdminService;
import com.web.model.dto.MemberDTO;

/**
 * Servlet implementation class GsonTestServlet
 */
@WebServlet("/GsonTest.do")
public class GsonTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GsonTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map pagemap=Map.of("cPage",1,"numPerpage",30);
		Map map=Map.of("type","userId","keyword","a");
		List<MemberDTO> list = new AdminService().searchMember(pagemap , map);
		MemberDTO m=list.get(0);
		System.out.println(m);
		
		//Gson라이브러리를 이용해서 json에 파싱하기
		//Gson를래스를 생성한다
		Gson gson = new Gson();
		
		//파싱해주는 매소드를 제공 -> toJson(json으로 변경할 객체[,outputStream]);
		response.setContentType("application/json;charset=utf-8");
		//gson.toJson(m,response.getWriter()) : 
		gson.toJson(list,response.getWriter());
		//gson.fromJson(); vo객체로 만들어줌 -> JSON형태로 전송된 데이터를....
		String data=request.getParameter("data");
		MemberDTO requestData=gson.fromJson(data,MemberDTO.class);
		System.out.println(requestData);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
